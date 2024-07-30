terraform {
    required_version = "~> 1.9.3" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.60.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-07caf09b362be10b8" 
	instance_type = "t2.nano"
}
