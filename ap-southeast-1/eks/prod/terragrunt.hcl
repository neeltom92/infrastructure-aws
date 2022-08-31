include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::https://github.com/neeltom92/infrastructure-modules.git//eks?ref=v1.1.7"
}
inputs = {
  aws_region             = "ap-southeast-1"
  cluster_name           = "test-neel-eks"
  cluster_version        = "1.23"
  vpc_id                 = "vpc-0495606425976acd0"
  aws_account_id         = "998439965296"
  sshkeys                = "this-is-a-test"
  private_subnets        = ["subnet-02dde3d5e9cb6dd26", "subnet-04832b2bf573a2584", "subnet-06dad76c7bf5bb17c"]
  environment            = "test"
  disksize               = "30"
  spot_instance_types           =  ["t3a.medium"]
  ondemand_shared_instance_type =  ["t3a.medium"]
  ondemand_memory_instance_type =  ["m5a.large"]
  max_size                      = "2"
  desired_size                  = "1"
}

