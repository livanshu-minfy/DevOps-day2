terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws"{
    region = "ap-south-1"

}

resource "aws_vpc" "day_two_livanshu_vpc"{
    cidr_block = var.vpc_cidr
}
resource "aws_internet_gateway" "day_two_livanshu_igw" {
    vpc_id = aws_vpc.day_two_livanshu_vpc.id
}
resource "aws_subnet" "day_two_livanshu_subnet" {
    availability_zone = "ap-south-1a"
    vpc_id = aws_vpc.day_two_livanshu_vpc.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true
}
resource "aws_route_table" "day_two_livanshu_rt" {
    vpc_id = aws_vpc.day_two_livanshu_vpc.id

    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.day_two_livanshu_igw.id
    }
}
resource "aws_route_table_association" "day_two_livanshu_rt_asso" {
    subnet_id = aws_subnet.day_two_livanshu_subnet.id
    route_table_id = aws_route_table.day_two_livanshu_rt.id
}
resource "aws_security_group" "day_two_livanshu_sg" {
    vpc_id = aws_vpc.day_two_livanshu_vpc.id

    ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "day_two_livanshu_ec2" {
    ami = "ami-0b09627181c8d5778"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.day_two_livanshu_subnet.id
    vpc_security_group_ids = [ aws_security_group.day_two_livanshu_sg.id ]
    associate_public_ip_address = true
    
    user_data = <<-EOF
     #!/bin/bash
     yum update -y
     yum install -y httpd
     systemctl start httpd
     systemctl enable httpd
     echo "<h1>Hello World from terraform $(hostname -f)</h1>" > /var/www/html/index.html
    EOF
}