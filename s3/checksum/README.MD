## Create bucket 

```
aws s3api create-bucket --bucket cheter-237 --create-bucket-configuration="LocationConstraint=ap-southeast-1"
```

## compute checksum value as base64 of file

```
openssl dgst -sha1 -binary checksum_file.txt | base64
```

## putobject with checksum

```
aws s3api put-object \
    --bucket="cheter-237" \
    --key="verified_checksum_file1.txt" \
    --body="checksum_file.txt" \
    --checksum-algorithm="SHA1" \
    --checksum-sha1="eCKeJYTZxqQZndPBqeoXPXK91HE"
```