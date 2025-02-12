FROM postgres:16.3

ENV POSTGRES_USER=postgres
ENV POSTGRES_DB=zolara

COPY ./seeds /docker-entrypoint-initdb.d/seeds
# Add the init.sql and  file to the /docker-entrypoint-initdb.d/ directory
COPY ./01_init.sql /docker-entrypoint-initdb.d/
COPY ./02_dev.sql /docker-entrypoint-initdb.d/