terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
    profile = "Ken"
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "V_test" {
  cidr_block = "10.0.0.0/16"
}

# Create a subnet
resource "aws_subnet" "subnet_test" {
  vpc_id     = aws_vpc.V_test.id    
  cidr_block = "89.0.142.86/24"
}   
resource "aws_subnet" "subnet_test2" {
  vpc_id     = aws_vpc.V_test.id    
  cidr_block = "237.84.2.178/24"
}