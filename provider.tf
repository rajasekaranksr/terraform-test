provider "aws" {
  region  = "us-east-1"
}

terraform {
  backend "s3" {
  bucket = "test-terraform-state9"
  key = "dev/ec2-app2/terraform.tfstate"
  region = "us-east-1"
  }
}
