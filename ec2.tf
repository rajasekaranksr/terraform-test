resource "aws_instance" "main" {
  ami           = "ami-0c0b74d29acd0cd97"
  instance_type = "t2.micro"
  count         = 2
  
  tags = {
    Name = "IaC-Test"
    Env = "dev"
  }
}
