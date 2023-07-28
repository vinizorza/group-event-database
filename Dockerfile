FROM postgres
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_DB postgres
COPY group-event.sql /docker-entrypoint-initdb.d/