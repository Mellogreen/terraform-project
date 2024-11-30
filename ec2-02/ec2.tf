# Creatng an instance using varibles dynamically

provider "aws" {
   region = "eu-north-1"  
}

resource "aws_instance" "ec2" {
  ami = var.my_ami
  instance_type = var.my_instance_type

  tags = {
    Name = var.my_tag_name
  }
}

variable "my_ami" {
  type = string
  default = "ami-08ebi50f611ca277f"
}

variable "my_instance_type" {
 type = string
 default = "t2.micro"
}

variable "my_tag_name" {
    type = string
    default = "firstec2"
}