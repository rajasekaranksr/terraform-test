provider "aws" {
  region  = "us-east-2"
}

terraform {
  backend "s3" {
  bucket = "ua-terraform-state"
  key = "dev/ec2-app2/terraform.tfstate"
  region = "us-east-2"
  }
}
