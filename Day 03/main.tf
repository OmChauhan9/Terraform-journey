terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_first_s3_DEMObucket" {
  bucket = "demo-9203-bucket-s3"

  tags = {
    Name = "my_bucket"
    Environment = "Dev"
  }
}