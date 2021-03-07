provider "aws" {
  region     = "us-east-2"
}
resource "aws_instance" "nginx" {
  ami           = "ami-09246ddb00c7c4fef"
  key_name = "ohio"
  instance_type = "t2.micro"
  security_groups= [ "nginxsg"]
  tags= {
    Name = "nginx_instance"
  }
}
resource "aws_security_group" "nginxsg" {
  name        = "nginxsg"
  description = "Security group to allow nginx and ssh port"

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
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags= {
    Name = "NGINX_INSTANCE"
  }
}
