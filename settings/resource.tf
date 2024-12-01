
# project Create an ec2 instance
# Use a script provided below to pass user data to the instance & this script will be in another bash file in the module i.e the same path
# Attach an elastic IP to the instance

/*#! /bin/bash
# Instance Identity Metadata Reference - https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-identity-documents.html
sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo service httpd start  
sudo echo '<h1>Welcome to Landmark Technologies</h1>' | sudo tee /var/www/html/index.html
sudo mkdir /var/www/html/app1
sudo echo '<!DOCTYPE html> <html> <body style="background-color:rgb(250, 210, 210);"> <h1>Welcome to Landmark Technologies</h1> <p>Terraform Demo</p> <p>Application Version: V1</p> </body></html>' | sudo tee /var/www/html/app1/index.html

The elastic IP will be changed with discreation
sudo curl http://169.254.169.254/latest/dynamic/instance-identity/document -o /var/www/html/app1/metadata.html  */


#ec2 instance resouces

# Ami and other resource using variables

resource "aws_instance" "test_ec2" {
  ami           = data.aws_ami.ubuntu_ami.id
  instance_type = var.my_instance_type["prod"]
  user_data = file("${path.module}/httpd.sh")
  tags = {
    Name = var.my_instance_name
  }
}

# Eip configuration
resource "aws_eip" "my_eip" {
  instance = aws_instance.test_ec2.id

}

