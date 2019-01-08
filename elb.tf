//--------------------------------------------------------------------
// Modules
module "elb" {
  source  = "app.terraform.io/vinnie-demo/elb/aws"
  version = "1.0.0"

  health_check = 15
  internal = "true"
  listener = "1.0.0.0"
  name = "vinnie-elb-test"
  security_groups = "sg-0b702c0291057f4f2"
  subnets = "subnet-04a9c63779fdc8e92"
}