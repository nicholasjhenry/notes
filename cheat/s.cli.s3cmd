Set permissions

    s3cmd setacl --acl-public --recursive s3://my-bucket/assets

Sync buckets

    s3cmd cp s3://my-bucket-production s3://my-bucket-staging --recursive --parallel --workers=50 --acl-public

Use a different config

    s3cmd ls -c ~/.s3cfg.my-project

Empty bucket

    s3cmd del s3://aldo-dance-prod/ --recursive --force

Upload

    s3cmd put uploads  s3://legacy-quilting-staging  --recursive --acl-public

Reference:

    https://github.com/Pearltrees/s3cmd-modification/
