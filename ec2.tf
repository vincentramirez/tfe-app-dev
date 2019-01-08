//--------------------------------------------------------------------
// Modules
module "ec2_instance" {
  source  = "app.terraform.io/vinnie-demo/ec2-instance/aws"
  version = "1.13.0"

  ami = "ami-0b59bfac6be064b78"
  associate_public_ip_address = "false"
  instance_type = "t2.micro"
  name = "vinnie-mod-test"
  subnet_id = []
  vpc_security_group_ids = []
}