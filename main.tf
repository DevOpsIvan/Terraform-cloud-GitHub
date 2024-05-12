terraform {
    required_version = "~> 1.3.6" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-03c3351e3ce9d04eb" 
	instance_type = "t2.micro"
}
