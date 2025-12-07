## Resources

- Bulletproof TLS Guide (Book)
- OpenSSL Cookbook (Book)
- https://www.cloudflare.com/en-ca/learning/ssl/what-is-ssl/
- See Professional Vault for [SL-TLS: Basics A Practical Guide](obsidian://open?vault=Professional&file=Wiki%2FSSL-TLS)
## Certificate Creation

https://msol.io/blog/tech/create-a-self-signed-ssl-certificate-with-openssl/

* CER: binary format
* CRT: a X.509 certificate in base64 encoded format
* CSR: Certificate Signing Request
* PEM: Privacy Enhanced Mail (PEM) files are concatenated certificate containers frequently used in certificate installations when multiple certificates that form a complete chain are being imported as a single file. They are a defined standard in RFCs 1421 through 1424.

```sh
# conversion

openssl x509 -inform DER -in certificate.cer -out certificate.crt
openssl x509 -in certificate.crt  -text
openssl x509 -inform der -in certificate.cer -out certificate.pem
```

## Debugging

- https://badssl.com/
- https://www.ssllabs.com/ssltest

Shows you what a typical HTTPS client sees. The `-v` flag reveals SSL handshake details and any certificate issues.

```sh
curl -v https://example.com 
```


Verify connection:

```sh
openssl s_client -connect google.com:443 -servername example.com -showcert
```

- **`openssl`** - The OpenSSL command-line tool for SSL/TLS operations
- **`s_client`** - Implements a generic SSL/TLS client (simulates a browser/client connecting to a server)
- **`-connect google.com:443`** - Connect to `google.com` on port `443` (HTTPS/SSL port)
- **`-showcert`** - Display the full certificate chain sent by the server
- **`-servername`** - SNI is a TLS extension that tells the server which hostname you're requesting; single IP address can be for multiple domain names

## What It Does

This command:

1. Opens a TCP connection to the server
2. Initiates an SSL/TLS handshake
3. Displays detailed information about the SSL connection
4. Shows you the certificate(s) the server presents
5. Keeps the connection open for you to type commands (like HTTP requests)

Inspect certificate details - expiration dates, SANs (Subject Alternative Names), issuer, key usage, etc:

```sh
openssl x509 -in cert.pem -text -noout
```

**Key Debugging Concepts:**

Certificate chain validation is where most production issues happen. Your server needs to send the full chain (leaf → intermediate → root), not just the leaf certificate. Use SSL Labs (ssllabs.com/ssltest) to verify your chain is complete.

Common production issues you'll encounter:

- **SNI (Server Name Indication) problems** - especially with older clients or multi-domain setups
- **Expired intermediates** - your cert is valid but an intermediate expired
- **Missing intermediates** - works in some browsers (they cache intermediates) but fails in curl/Erlang
- **Clock skew** - certificates "not yet valid" due to server time issues