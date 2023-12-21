FROM postgis/postgis:13-3.4



#COPY postgresql.conf /var/lib/postgresql/data/postgresql.conf

COPY --chmod=755 init.sql /docker-entrypoint-initdb.d/1_init.sql
COPY --chmod=755 init_refdestranslate.sql /docker-entrypoint-initdb.d/


RUN mkdir /scripts
COPY --chmod=755 preload_database.sql /scripts
COPY --chmod=755 update_modified_column.sql /scripts
