terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "5.86.1"  
      }
  }

  backend "s3" {
    bucket ="11-remote-state"
    key    = "vpc-demo"
    region = "us-east-1"
    dynamodb_table = "11-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}