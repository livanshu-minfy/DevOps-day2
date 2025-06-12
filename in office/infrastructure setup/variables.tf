variable "aws_region"{
    description = "this is the aws region to create resources in"
    type = string
    default = "ap-south-1"

}
variable "vpc_cidr" {
    description = "CIDR block for vpc"
    type = string
    default = "10.0.0.0/16"
}
variable "instance_type" {
    description = "the ec2 instance type"
    type = string
    default = "t2.micro"
}