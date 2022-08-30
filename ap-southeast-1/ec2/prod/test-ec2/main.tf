module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-02ee763250491e04a"
  instance_type          = "t2.micro"
  key_name               = "this-is-a-test"
  monitoring             = true
  vpc_security_group_ids = ["sg-0c87f5ffae3d4f99c"]
  subnet_id              = "subnet-06dad76c7bf5bb17c"

  tags = {
    Name        = var.ec2name
    Terraform   = "true"
    Environment = "dev"
  }
}




