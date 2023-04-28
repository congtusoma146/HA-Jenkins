provider "aws" {
  region = "ap-southeast-1"
}

variable "instance_name" {
  type = string
  default = "live-test-instance"
}

variable "ami_id" {
  type = string
  default = "ami-0316cb57e442cdd65"
}

variable "instance_type" {
  type = string
  default = "t2.small"
}

variable "key_name" {
  type = string
  default = "mhviet-key"
}

variable "security_group_ids" {
  type    = list(string)
  default = ["sg-01ce819e8d65269f0"]
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "subnet_ids" {
  type    = list(string)
  default = ["subnet-079a6283bb8d816c0", "subnet-0d9b976c2038a79ac", "subnet-0c4f3f5ce893d33cf"]
}