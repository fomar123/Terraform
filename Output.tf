provider "aws" {
    region =  "us-east-1"
    access_key = "AKIA5VOS5ZHSIQIAGJX6"
    secret_key = "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"
}

resource "aws_vpc" "development-vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "development"
    }
}

resource "aws_subnet" "dev-subnet-1" {
    vpc_id = aws_vpc.development-vpc.id
    cidr_block = "10.0.10.0/24"
    availability_zone = "us-east-1a"
        tags = {
        Name = "subnet-1-dev"
    }
}

output "dev-vpc-id" {
    value =  aws_vpc.development-vpc.id
}

output "dev-subnet-id" {
    value =  aws_subnet.dev-subnet-1.id
}
