     pg_dump postgres://postgres:postgres@localhost/my_db --exclude-table=pg_catalog --exclude-table='oban_*' > tmp/lhs.sql
     pg_dump postgres://postgres:postgres@localhost/my_db --exclude-table=pg_catalog --exclude-table='oban_*' > tmp/rhs.sql

     diff -U0 tmp/10.sql tmp/20.sql | delta > tmp/delta.diff
     cat tmp/delta.diff | aha > tmp/delta.html
     wkhtmltopdf --orientation Landscape --page-size A0 tmp/delta.html tmp/delta.pdf
     open tmp/delta.pdf
