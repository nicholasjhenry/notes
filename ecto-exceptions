## MariaExError

Process #PID<0.21793.40> terminating: [tcp] `recv` failed with: :closed

???

Process #PID<0.21793.40> terminating: [tcp] `recv` failed with: :timeout

???

## Poolboy Timeout

```
 {:timeout, {:gen_server, :call, [#PID<0.956.0>, {:checkout, #Reference<0.1708073465.1077673986.138070>, true, 15000}, 5000]}}

(db_connection) lib/db_connection/poolboy.ex:112: DBConnection.Poolboy.checkout/3
(db_connection) lib/db_connection.ex:920: DBConnection.checkout/2
(db_connection) lib/db_connection.ex:742: DBConnection.run/3
(db_connection) lib/db_connection.ex:584: DBConnection.prepare_execute/4
(ecto) lib/ecto/adapters/mysql/connection.ex:22: Ecto.Adapters.MySQL.Connection.execute/4
(ecto) lib/ecto/adapters/sql.ex:256: Ecto.Adapters.SQL.sql_call/6
(ecto) lib/ecto/adapters/mysql.ex:191: Ecto.Adapters.MySQL.insert/6
(ecto) lib/ecto/repo/schema.ex:543: Ecto.Repo.Schema.apply/4
```

- Issue: Database pool is not big enough.
- Solution: Increase the size of the pool size.
