/*
terraform {
 required_providers {
 aws = {
   region = "us-east-2"
   }
 azurerm = {
 region = "us-east2"
 }
}yes
}
*/
provider "aws" {
  region = "us-west-2"
}
provider "aws" {
  alias  = "california"
  region = "us-west-2"
}