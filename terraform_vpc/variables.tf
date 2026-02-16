variable "aws_region" {
    description = "aws region name"
    type = string
    default = "ap-south-1"
}

variable "vpc_cidr" {
    description = "CIDR block for vpc"
    type = string
    default = "10.0.0.0/16"
}
variable "public_subnet_cidr" {
    description = "public subnet cidr block"
    type = string
    default = "10.0.1.0/24"
}
variable "private_subnet_cidr" {
    description = "private subnet cidr block"
    type = string
    default = "10.0.2.0/24"
}
variable "availability_zone" {
    description = "availability zone for subnets"
    type = string
    default = "ap-south-1a"
}
variable "project_name" {
    type = string
}
