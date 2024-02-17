https://msol.io/blog/tech/create-a-self-signed-ssl-certificate-with-openssl/

* CER: binary format
* CRT: a X.509 certificate in base64 encoded format
* CSR: Certificate Signing Request
* PEM: Privacy Enhanced Mail (PEM) files are concatenated certificate containers frequently used in certificate installations when multiple certificates that form a complete chain are being imported as a single file. They are a defined standard in RFCs 1421 through 1424.

    # conversion
    openssl x509 -inform DER -in certificate.cer -out certificate.crt
    openssl x509 -in certificate.crt  -text
    openssl x509 -inform der -in certificate.cer -out certificate.pem
