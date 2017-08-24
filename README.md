## Run Container 

``` sh
docker container run --rm \
-e backupfile=abc-data.gz.enc \
-v /data/openldap/backup:/data/backup \
-v /directory-of-private-key/ldapbackup-secure.priv.pem:/ldapbackup-secure.priv.pem:ro \
konrad54/openssl-decrypt-file:latest
```

## How to build image

``` sh
mkdir /tmp/openssl-decrypt-file
cd /tmp/openssl-decrypt-file
vi Dockerfile
vi entry.sh

docker build -t konrad54/openssl-decrypt-file .