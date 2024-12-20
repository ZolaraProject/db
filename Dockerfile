FROM postgres:17.2
# ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_USER=postgres
ENV POSTGRES_DB=zolara
COPY ./init.sql /docker-entrypoint-initdb.d/