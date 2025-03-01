## Application

```
fly ssh console
fly ssh console -g worker
```

Scaling

```
fly scale memory 4096 --process-group web
fly scale vm performance-2x --process-group web
```
## Database

```
fly postgres connect -a <postgres-app-name>
fly proxy 5433:5432 -a <postgres-app-name>
```

https://fly.io/docs/postgres/connecting/connecting-with-flyctl/