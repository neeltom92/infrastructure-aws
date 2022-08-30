provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  backend "s3" {
    bucket         = "vpc-singapore-ap-southeast-1-998439965296"
    key            = "vpc/singapore/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "dynamo-tf-lock"
  }
}
