variable "aws_access_key" {}
variable "aws_secret_key" {}

provider "aws" {
  aws_access_key = "var.aws_access_key"
  aws_secret_key = "var.aws_secret_key"
  region         = "ap-northeast-1"
}

resource "aws_vpc" "terraform-cloud-test-vpc" {
  cidr_block           = "11.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  tags = {
    Name = "terraform-cloud-test-vpc"
  }
}
