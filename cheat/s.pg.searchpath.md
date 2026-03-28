Temporary:

```sql
SET search_path TO schema1, schema2, public;
```


Permanent:

```sql
ALTER ROLE postgres SET search_path TO rideshare, public;
```
