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

## Custom Domain

https://fly.io/docs/networking/custom-domain/#option-i-set-a-cname-record

Recommended: Option I: Set a CNAME record

- Once the domain has been setup, add a certificate: https://fly.io/docs/networking/custom-domain/#get-certified
- It may take some time for the certificate to be issued, check with `fly certs check example.com`
- Once the certificate has been issued you should be able to access the application via the domain