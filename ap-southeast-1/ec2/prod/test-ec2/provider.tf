provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  # Intentionally empty. Will be filled by Terragrunt.
  backend "s3" {}
}


