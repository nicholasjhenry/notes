    select table_schema,
          table_name
    from information_schema.tables
    where table_name like 'payment%'
          and table_schema not in ('information_schema', 'pg_catalog')
          and table_type = 'BASE TABLE'
    order by table_name,
            table_schema;