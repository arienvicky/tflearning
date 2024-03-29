terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.63.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket ="tfstate-tf"
    key="terraform.tfstate"
    region = "us-east-1"
  }
}
