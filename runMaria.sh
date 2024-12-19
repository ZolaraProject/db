docker secret create mariadb_password ./secrets/postgres-password
docker build --secret id=mariadb_password,src=secrets/postgres-password -t mariadb:ZOLARA_TAG -f Dockerfile.maria .