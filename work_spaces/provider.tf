terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.98.0"
    }
  }
  backend "s3" {
    bucket         = "naveen-expense"
    key            = "expense-workspace" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region         = "us-east-1"
    dynamodb_table = "naveen-workspace-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}