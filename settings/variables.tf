variable "us_region" {
  type    = string
  default = "us-east-1"

}

# this is no longer needed cos a data source for Ami has been created
# variable "my_ami" {
#   type = string
#   default = "ami-08ebi50f611ca277f"
# }

variable "my_instance_type" {
  # Having the instance type as the default value
  # type = string
  # default = "t3.micro"

  # Having the instance type as a list
  # type = list (string)
  # default = ["t3.micro", "t3.medium", "t3.large"]

# Having the instance type as a map
type = map
default ={
 dev = "t3.micro"
 staging = "t3.medium"
 prod = "t3.large"
}

}

variable "my_instance_name" {
  type    = string
  default = "DemoEc2"

}