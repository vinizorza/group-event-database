FROM postgres
ENV POSTGRES_PASSWORD IY#$u#tS
ENV POSTGRES_DB group-event
COPY group-event.sql /docker-entrypoint-initdb.d/