data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.36.0"
    }
  }
  required_version = ">= 1.1.7"

  backend "s3" {
    bucket = "bootstrap-tfstate-ac1db8b1"
    key    = "tf-gha.tfstate"
    region = "eu-west-2"

  }
}

provider "aws" {
  region = "eu-west-2"
}

