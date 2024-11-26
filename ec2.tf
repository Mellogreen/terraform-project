# For future terraform reference use the github link below
# https://github.com/LandmakTechnology/terraform-master-class-series/blob/main/01%20-%20Introduction%20to%20terraform/c)%20aws-credentials.md


provider "aws" {
   region = "eu-north-1"  
}

resource "aws_instance" "ec2" {
  ami = "ami-08ebi50f611ca277f"
  instance_type = "t2.micro"

  tags = {
    Name = "firstec2"
  }
}