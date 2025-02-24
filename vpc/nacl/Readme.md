## create NACL

```sh
aws ec2 create-network-acl \
--vpc-id "vpc-0abd55c3688b8e840"
```

## add entry NACL

```sh
aws ec2 create-network-acl-entry \
--network-acl-id acl-087779233c0121768 \
--ingress \
--rule-number 90 \
--rule-action deny \
--protocol -1 \
--cidr-block 42.61.63.2/32 \
--port-range From=0,To=65535
```

## Get AMI AMZ Linux 2
```sh
aws ec2 describe-images \
--owners amazon \
--filters "Name=name,Values=amzn2-ami-hvm-*-x86_64-gp2" "Name=state,Values=available" \
--query "Images | sort_by(@, &CreationDate) | [-1].ImageId" \
--region ap-southeast-1 \
--output text
```

## Deploy CloudFormation from template
```sh
aws cloudformation deploy \
--template-file template.yaml \
--region ap-southeast-1 \
--stack-name nacl-example \
--capabilities CAPABILITY_NAMED_IAM
```
