provider "aws" {
  region = "ap-northeast-1"
}

variable "aws_access_key" {}
variable "aws_secret_key" {}

resource "aws_vpc" "terraform-cloud-test-vpc" {
  cidr_block           = "11.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  tags = {
    Name = "terraform-cloud-test-vpc"
  }
}
