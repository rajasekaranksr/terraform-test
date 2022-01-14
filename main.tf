provider "aws" {
  profile = "default"
  shared_credentials_file = "/home/jenkins/.aws/config"
  region  = "us-east-2"
}

resource "aws_instance" "vm-web" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "server for web"
    Env = "dev"
  }
}
