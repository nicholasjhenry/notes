Start console

    psql template1

Create/drop

    createdb <dbname>
    dropdb <dbname>

List databases

    \l

List tables

    \d

Describe table

    \d <tablename>

Connect db

    \c <dbname>

Dump database (SQL)

    pg_dump dbname > mydb.sql

Dump database (Compress format suitable for Heroku)

    pg_dump -Fc --no-acl --no-owner -h localhost -U root mydb > mydb.dump

Restore database

    pg_restore --verbose --clean --no-acl --no-owner -U root -d example_development /tmp/heroku_db.dump

Heroku

    PGPASSWORD=mypassword pg_dump -Fc --no-acl --no-owner -h localhost -U myuser mydb > mydb.dump
    heroku pgbackups:restore DATABASE 'http://f.cl.ly/items/1q2o3t1d3g0F1j2g3z18/mydb.dump'

Create a root user

    createuser --superuser root

Create a user (really a role, via SQL)

CREATE ROLE leo LOGIN PASSWORD 'lion!king';

CSV

    COPY products_273 TO '/tmp/products_199.csv' DELIMITER ',' CSV HEADER;

View log

    tail -f /usr/local/var/postgres/server.log

WITH RECURSIVE

    WITH RECURSIVE tree (parent_id, child_id) AS (
      -- seed the call
      SELECT parent_id, id
      FROM catalog_tags
      WHERE catalog_tags.parent_id = 99
      UNION ALL
      - make the recursive call
      SELECT ct.parent_id, ct.id
      FROM catalog_tags ct
      JOIN tree t ON ct.parent_id = t.child_id
    )
    SELECT child_id FROM tree"

JSONB

    SELECT * FROM json_test WHERE data @> '{"a":1}';

docker

    psql -h localhost -U postgres my_db

psql

    postgres://postgres@localhost/my_db

HTML Report

    psql -c "\l+" -H -q postgres > out.html

Database URL
    postgres://postgres:postgres@localhost/mydb
