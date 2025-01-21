resource "aws_s3_bucket" "MyBucket" {
  bucket = "chester"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}