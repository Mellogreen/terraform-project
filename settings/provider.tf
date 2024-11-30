/* versioning of software update (skew version)

1.4.5 => 1.4.6 path version update
1.4.6 => 1.5.0 minor version update
1.4.6 => 2.0.0 major version update
*/

terraform {
  required_version = "~> 1.0" # which means any version equal & above 1.0 like 1.1, 1.2 etc and < 2.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.us_region
}