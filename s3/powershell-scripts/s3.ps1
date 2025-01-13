Import-Module AWS.Tools.S3

$region = "ap-southeast-1"
$bucket = Read-Host "Enter bucket name"

Write-Host "AWS region: $region"
Write-Host "Bucket name: $bucket"

New-S3Bucket -BucketName $bucket -region $region