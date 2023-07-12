terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 4.0"
    }
    }
}

# Configure the AWS Provider
provider "aws" {
    region = "us-east-1"
}
#configur the ec2 instance 
resource "aws_instance" "app_server" {
    ami           = "ami-830c94e3"
    instance_type = "t2.micro"

    tags = {
    Name = "Terraform_Demo"
    }
}