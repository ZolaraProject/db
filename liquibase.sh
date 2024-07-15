#!/bin/bash

set -e

# Clean environment
[[ "$(docker ps --format '{{.Names}}')" =~ "postgresqldiff" ]] && echo "Stopping container postgresqldiff..." && docker stop postgresqldiff > /dev/null
[[ "$(docker ps -a --format '{{.Names}}')" =~ "postgresqldiff" ]] && echo "Removing container postgresqldiff..." && docker rm postgresqldiff > /dev/null
[ -d "out" ] && rm -rf out
[ -f "diff.sql" ] && rm -f diff.sql
[ -f "ref.sql" ] && rm -f ref.sql
mkdir out && chmod 777 out

# Generate the diff
echo "Waiting for the reference schema in VSCode... "
echo "-- Paste here reference schema then close the file" > ref.sql && code ref.sql --wait

echo "Generating reference dump..."
docker run --name postgresqldiff -e POSTGRES_PASSWORD=postgres -p 5443:5432 -d postgres:16.3 > /dev/null

echo "Waiting for PostgreSQL to be ready..."
export PGPASSWORD="postgres"
until docker exec -it postgresqldiff psql -U postgres -c '\q' 2> /dev/null; do sleep 1; done
echo "PostgreSQL is ready, launching Liquibase"

docker exec -i postgresqldiff psql -U postgres -c "CREATE DATABASE zolara;"
docker exec -i postgresqldiff psql -U postgres -d zolara < ref.sql

# Check that the reference database has the expected tables
docker exec -i postgresqldiff psql -U postgres -d zolara -c '\dt'

# Generate the diff
docker run -v ${PWD}:/liquibase/changelog -v ${PWD}/out:/out --network host liquibase/liquibase --defaultsFile=/liquibase/changelog/zolara.properties --referenceUrl="jdbc:postgresql://127.0.0.1:5443/zolara" --referenceUsername=postgres  --referencePassword=postgres --changeLogFile=/out/diff.sql diffChangeLog

# Check if diff.sql is generated
if [ -f out/diff.sql ]; then
    echo "\c zolara;" > diff.sql
    cat out/diff.sql >> diff.sql
    code diff.sql
else
    echo "diff.sql was not generated. Check Liquibase output for errors."
fi

# Clean up
rm -rf out
rm -f ref.sql
echo "Stopping container postgresqldiff..." && docker stop postgresqldiff > /dev/null
echo "Removing container postgresqldiff..." && docker rm postgresqldiff > /dev/null
