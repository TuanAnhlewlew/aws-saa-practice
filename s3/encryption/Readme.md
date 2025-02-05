## create a bucket

chester-237

## create a fiel

```sh
echo "hehheheh" > file.txt
```

## upload file with SSE-S3

```sh
aws s3 cp file.txt s3://chester-237
```

## put object with SSE-KMS

```sh
aws s3api put-object \
--bucket chester-237 \
--key file.txt \
--body file.txt \
--server-side-encryption aws:kms \
--ssekms-key-id {id for kms key}
```

## put object with SSE-C [FAIL]

```sh
export B64_KEY=$(openssl rand -base64 32)

echo $B64_KEY

export MD5_VALUE=$(echo -n $B64_KEY | md5sum | awk '{print $1}' | base64 -w0)

echo $MD5_VALUE

aws s3api put-object \
--bucket chester-237 \
--key file.txt \
--body file.txt \
--sse-customer-algorithm AES256 \
--sse-customer-key $B64_KEY \
--sse-customer-key-md5 $MD5_VALUE
```

## put object with SSE-C via aws s3

```sh
openssl rand -out ssec.key 32

aws s3 cp file.txt s3://chester-237 \
--sse-c AES256 \
--sse-c-key fileb://ssec.key

aws s3 cp s3://chester-237/file.txt file.txt \
--sse-c AES256 \
--sse-c-key fileb://ssec.key
```