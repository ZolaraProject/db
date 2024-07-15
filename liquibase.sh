#!/bin/bash

set -e

# Clean environment
[[ "$(sudo docker ps --format '{{.Names}}')" =~ "postgresqldiff" ]] && echo "Stopping container postgresqldiff..." && docker stop postgresqldiff > /dev/null
[[ "$(sudo docker ps -a --format '{{.Names}}')" =~ "postgresqldiff" ]] && echo "Removing container postgresqldiff..." && docker rm postgresqldiff > /dev/null
[ -d "out" ] && sudo rm -rf out
[ -f "diff.sql" ] && sudo rm -f diff.sql
[ -f "ref.sql" ] && sudo rm -f ref.sql
sudo mkdir out && sudo chmod 777 out

# Generate the diff
echo "Waiting for the reference schema in VSCode... "
echo "-- Paste here reference schema then close the file" > ref.sql && code ref.sql --wait

echo "Generating reference dump..."
sudo docker run --name postgresqldiff -e POSTGRES_PASSWORD=postgres -p 5443:5432 -d postgres:16.3 > /dev/null

echo "Waiting for PostgreSQL to be ready..."
export PGPASSWORD="postgres"
until sudo docker exec -it postgresqldiff psql -U postgres -c '\q' 2> /dev/null; do sleep 1; done
echo "PostgreSQL is ready, launching Liquibase"

sudo docker exec -i postgresqldiff psql -U postgres -c "CREATE DATABASE zolara;"
sudo docker exec -i postgresqldiff psql -U postgres -d zolara < ref.sql

# Check that the reference database has the expected tables
sudo docker exec -i postgresqldiff psql -U postgres -d zolara -c '\dt'

# Generate the diff
sudo docker run -v ${PWD}:/liquibase/changelog -v ${PWD}/out:/out --network host liquibase/liquibase --defaultsFile=/liquibase/changelog/zolara.properties --referenceUrl="jdbc:postgresql://127.0.0.1:5443/zolara" --referenceUsername=postgres  --referencePassword=postgres --changeLogFile=/out/diff.sql diffChangeLog

# Check if diff.sql is generated
if [ -f out/diff.sql ]; then
    cat out/diff.sql >> diff.sql
    code diff.sql
else
    echo "diff.sql was not generated. Check Liquibase output for errors."
fi

# Clean up
sudo rm -rf out
sudo rm -f ref.sql
echo "Stopping container postgresqldiff..." && sudo docker stop postgresqldiff > /dev/null
echo "Removing container postgresqldiff..." && sudo docker rm postgresqldiff > /dev/null
