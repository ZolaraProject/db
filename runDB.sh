docker build -t postgres .
# docker run -d --restart unless-stopped --name postgres -p 127.0.0.1:5432:5432 postgres