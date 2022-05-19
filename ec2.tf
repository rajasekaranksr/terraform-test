resource "aws_instance" "main" {
  ami           = "ami-001089eb624938d9f"
  instance_type = "t2.micro"

  tags = {
    Name = "IaC-Test"
    Env = "dev"
  }
}
