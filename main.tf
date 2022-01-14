provider "aws" {
  region  = "us-east-2"
  profile ="ansible"
  shared_credentials_file = "/home/jenkins/.aws/credentials"
}

resource "aws_instance" "vm-web" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "server for web"
    Env = "dev"
  }
}
