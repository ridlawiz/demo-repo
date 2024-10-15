
provider "aws" {
  region = "us-east-2" # Set your desired AWS region
  access_key = "AKIA6EPEBOQVP6QBDGW4"
  secret_key = "Oo7+FZ1ku1zu9s2/jGAyLUcrRyg2MPK/zD5r+9Us"
}


resource "aws_security_group" "example" {
  name        = "web_sg"
  description = "Allow inbound traffic on ports 80 and 22"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  
    cidr_blocks = ["0.0.0.0/0"]
  }
}



