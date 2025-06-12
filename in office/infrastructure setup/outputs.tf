output "instance_public_ip"{
    value = aws_instance.day_two_livanshu_ec2.public_ip
}
output "instance_private_ip" {
    value = aws_instance.day_two_livanshu_ec2.private_ip
}