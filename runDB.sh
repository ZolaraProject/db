docker build -t postgres .
docker run -d --restart unless-stopped --name postgres -p 5432:5432 postgres