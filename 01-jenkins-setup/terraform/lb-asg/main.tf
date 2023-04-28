provider "aws" {
  region = "ap-southeast-1"
}

module "lb-asg" {
  source        = "../modules/lb-asg"
  subnets       = ["subnet-0d9b976c2038a79ac", "subnet-079a6283bb8d816c0", "subnet-0c4f3f5ce893d33cf"]
  ami_id        = "ami-07738159b774ee889"
  instance_type = "t2.small"
  key_name      = "mhviet-key"
  environment   = "dev"
  vpc_id        = "vpc-04c33231f540e69ea"
}