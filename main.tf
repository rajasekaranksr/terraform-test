provider "aws" {
  region  = "us-east-2"
  profile ="ansible"
  shared_credentials_file = "/home/jenkins/.aws/credentials"
}

resource "aws_instance" "vm-web" {
  ami           = "ami-001089eb624938d9f"
  instance_type = "t2.micro"

  tags = {
    Name = "server for web"
    Env = "dev"
  }
}
