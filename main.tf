terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
  backend "s3" {
    profile = "aws-semi"
    bucket  = "kurosawa-aws-semi-tfstate"
    key     = "kurosawa.tfstate"
    region  = "ap-northeast-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = "ap-northeast-1"
  profile = "aws-semi"
}
