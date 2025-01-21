resource "aws_s3_bucket" "chester-237" {
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}