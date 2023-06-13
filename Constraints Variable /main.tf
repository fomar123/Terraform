provider "aws" {
    region =  "us-east-1"
    access_key = ""
    secret_key = ""
}

variable "subnet_cidr_block" {
    description = "subnet cidr block"
}

variable "cidr_blocks" {
    description = "cidr blocks for vpc and subnets"
    type = list(string)
}   

resource "aws_vpc" "development-vpc" {
    cidr_block = var.cidr_blocks[0]
    tags = {
        Name = "development"
    }
}

resource "aws_subnet" "dev-subnet-1" {
    vpc_id = aws_vpc.development-vpc.id
    cidr_block = var.cidr_blocks[1]
    availability_zone = "us-east-1a"
        tags = {
        Name = "subnet-1-dev"
    }
}
