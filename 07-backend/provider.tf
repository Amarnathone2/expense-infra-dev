terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "amar-remote-state"
    key    = "expense-dev-backend"
    region = "us-east-1"
    dynamodb_table = "amar-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}