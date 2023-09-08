provider "aws" {
  region = "us-east-1" 
}

resource "aws_instance" "jenkins" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"              
  key_name      = "your-key-name"
  security_group=["Jenkins-server"]
  tags = {
    Name = "jenkins-server"
  }
}


