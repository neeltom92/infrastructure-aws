include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::https://github.com/neeltom92/infrastructure-modules.git//ec2?ref=v0.0.2"
}
inputs = {

  ami                    = "ami-02ee763250491e04a"
  instance_type          = "t2.micro"
  key_name               = "this-is-a-test"
  monitoring             = true
  vpc_security_group_ids = ["sg-0c87f5ffae3d4f99c"]
  subnet_id              = "subnet-06dad76c7bf5bb17c"
  ec2name                = "this-is-a-tesddst"
}

