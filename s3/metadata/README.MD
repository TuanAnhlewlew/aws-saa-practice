## create a bucket

```

```

## create a new file 

```
echo "hehehehehe" > file.txt

```

## put-objects

```sh
aws s3api put-object --bucket chester-237 --key file.txt --body file.txt --metadata planet=Earths
```

## check file

```sh
aws s3api head-object --bucket chester-237 --key file.txt