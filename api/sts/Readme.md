## Create a new user with no perrmission

```sh
aws iam create-user --user-name sts-machine-user

aws iam create-access-key --user-name sts-machine-user --output table

aws configure

aws sts get-caller-identity

open ~/.aws/credentials
```

## Create a role that will access to resource

```sh
chmod u+x deploy

./deploy
```

## create new user and assume role

```sh
aws sts assume-role \
--role-arn arn:aws:iam::038462793211:role/my-sts-stack-StsRole-gEmkfJ01WuFb \
--role-session-name s3-access-temp \
--profile sts
```

## set credential in credential file

```sh
open ~/.aws/credentials

[assumed]
aws_access_key_id = xxxx
aws_secret_access_key = yyyyy
aws_session_token = zzzz
```

## request resource from assumed credential

```sh
aws s3 ls --profile assumed
```

## clean

```sh
aws iam delete-policy 
aws iam delete-access-key --access-key-id AKIAQR5EPUX5UHY7JU4N --user-name sts-machine-user
aws iam delete-user --user-name sts-machine-user
aws cloudformation delete-stack --stack-name my-sts-stack
```

## conclusion:
- source owner create a role with policy(access to resource) and allow users
- users are allow in the role, are able to create a request with Role'arn to obtain a temp credential wiht limit of time to access the resource that in the Role's policy.