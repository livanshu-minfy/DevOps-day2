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
resource "aws_s3_bucket" "bucket"{
    bucket = "minfy-training-livanshu-s3-1234"

    tags = {
        Name = "my first bucket"
    }
}