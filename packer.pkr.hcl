packer {
  required_plugins {
    amazon = {
      version = ">= 1.0.0"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "region" {}
variable "source_ami" {}
variable "instance_type" {}
variable "vpc_id" {}
variable "subnet_id" {}

source "amazon-ebs" "example" {
  access_key    = var.aws_access_key
  secret_key    = var.aws_secret_key
  region        = var.region
  source_ami    = var.source_ami
  instance_type = var.instance_type
  vpc_id        = var.vpc_id
  subnet_id     = var.subnet_id
  ami_name      = "packer-example-${timestamp()}"
}
