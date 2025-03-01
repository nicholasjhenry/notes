



Count rows:
``
```
SELECT relname, n_live_tup FROM pg_stat_user_tables;
```

```

SELECT pg_size_pretty(pg_database_size('dbname'));
```