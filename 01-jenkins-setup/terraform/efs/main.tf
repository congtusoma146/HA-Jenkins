provider "aws" {
  region = "ap-southeast-1"
}

module "efs_module" {
  source = "../modules/efs"
  vpc_id     = "vpc-04c33231f540e69ea"
  subnet_ids = ["subnet-0c4f3f5ce893d33cf", "subnet-079a6283bb8d816c0", "subnet-0d9b976c2038a79ac"]
}
