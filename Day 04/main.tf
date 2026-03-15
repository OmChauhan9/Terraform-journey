terraform {
    backend "s3" {
      bucket = "my-backend-remote-state"
      key = "dev/terraform.tfstate"
      region = "us-east-1"
      encrypt = true
      use_lockfile = true
    }

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

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "demo-checking-bucket"

  tags = {
    Name = "bucket"
    Environment = "Dev"
  }
}
