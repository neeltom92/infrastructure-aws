remote_state {
  backend = "s3"
  config = {
    bucket = "vpc-singapore-ap-southeast-1-998439965296"
    key = "${path_relative_to_include()}/terraform.tfstate"
    region         = "ap-southeast-1"
    encrypt        = true
    dynamodb_table = "dynamo-tf-lock"
  }
}

