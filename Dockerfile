FROM postgres:16.3
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_USER postgres
ENV POSTGRES_DB zolara
COPY ./init.sql /docker-entrypoint-initdb.d/