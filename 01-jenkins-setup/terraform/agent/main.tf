provider "aws" {
  region = "ap-southeast-1"
}

module "ec2_instance" {
  source = "../modules/ec2"

  instance_name      = "jenkins-agent"
  ami_id             = "ami-0316cb57e442cdd65"
  instance_type      = "t2.small"
  key_name           = "mhviet-key"
  subnet_ids         = ["subnet-0c4f3f5ce893d33cf", "subnet-079a6283bb8d816c0", "subnet-0d9b976c2038a79ac"]
  instance_count     = 1
}
