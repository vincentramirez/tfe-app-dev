//--------------------------------------------------------------------
// Modules
module "ec2_instance" {
  source  = "app.terraform.io/vinnie-demo/ec2-instance/aws"
  version = "1.13.0"

  ami = "ami-009d6802948d06e52"
  associate_public_ip_address = "false"
  instance_type = "t2.large"
  name = "vinnie-mod-test"
  subnet_id = "subnet-036103be4e6fb94af"
  vpc_security_group_ids = ["sg-0d1b21350b7259316"]
}
