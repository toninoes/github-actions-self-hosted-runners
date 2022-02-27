terraform {
  required_version = ">= 0.15.0"
  backend "s3" {
    bucket         = "toninoes-account-tf-state"
    key            = "prueba-github-actions"
    region         = "eu-west-1"
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.0.0"
    }
  }
}

provider "aws" {
  region  = "eu-west-1"
}
