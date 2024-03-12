#EC2 VARIABLES
variable "ami" {
    description= "to define the ami of ec2 instance"
    type= string 
}

variable "instance_type" {
    description= "to define the instance_type of ec2 instance"
    type= string 
}

variable "public_subnet_ec2" {
    description= "to define public subnet on ec2"
    type= string 
}

variable "ec2_sg" {
    description= "to define the sg on ec2"
    type= list(string) 
}