terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.6.0"
    }
  }
  required_version = ">= 0.15.0"
}

provider "aws" {
  region = "ap-northeast-1"
  profile = "aws-semi"
}
