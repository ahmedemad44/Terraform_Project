resource "aws_instance" "my-ec2" {
    ami= var.ami
    instance_type= var.instance_type
    vpc_security_group_ids = var.ec2_sg
    subnet_id = var.public_subnet_ec2
}
