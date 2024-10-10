docker secret create postgres_password ./secrets/postgres-password
docker build --secret id=postgres_password,src=secrets/postgres-password -t postgres:ZOLATA_TAG .

# docker build --build-arg POSTGRES_PASSWORD=$POSTGRES_PASSWORD -t postgres .
# docker run -d --restart unless-stopped --name postgres -p 127.0.0.1:5432:5432 postgres