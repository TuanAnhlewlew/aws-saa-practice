terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.83.1"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_s3_bucket" "chester-237" {
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.chester-237.id
  key    = "file_hehe.txt"
  source = "hehe.txt"

  etag = filemd5("hehe.txt")
}