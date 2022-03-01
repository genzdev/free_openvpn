terraform {
  required_version = ">= 0.12.29"

  backend "s3" {}
}

provider "aws" {
  version = "~> 2.47"
  region  = var.server_region[terraform.workspace]
  profile = var.profile[terraform.workspace]
}

output "access_vpn_url" {
  value       = "https://${aws_instance.openvpn.public_ip}:943/admin"
  description = "The public url address of the vpn server"
}

locals {
  images = {
    ca-central-1 = "ami-00339d8622921f9d1"
    us-west-1    = "ami-0ce1d8c91d5b9ee92"
    eu-south-1   = "ami-0b6d15c993d405ed4"
    ap-south-1   = "ami-029cb972e1b8a4bca"
  }
}