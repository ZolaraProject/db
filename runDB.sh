docker login
docker build -t postgres .
docker run -d --restart unless-stopped --name postgres -p 5433:5433 postgres