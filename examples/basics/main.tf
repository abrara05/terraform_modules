provider "aws" {
    region = "ap-south-1"
}

module "terraform_vpc" {
    source = "../../terraform_vpc"
    vpc_cidr = "10.0.0.0/16"
    public_subnet_cidr = "10.0.1.0/24"
    private_subnet_cidr = "10.0.2.0/24"
    project_name = "demo-project"

}

module "terraform_ec2" {
    source = "../../terraform_ec2"
    vpc_id = module.terraform_vpc.vpc_id
    subnet_id = module.terraform_vpc.public_subnet_id
    ami_id = "ami-019715e0d74f695be"
    instance_type = "t2.micro"
    key_name = "octkeypair"
    instance_name = "server"
}