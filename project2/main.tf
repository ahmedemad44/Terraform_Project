module "ec2-module" {
  source = "../modules/ec2_instance"
  ami= var.ami
  instance_type= var.instance_type
  public_subnet_ec2= module.network.public
  ec2_sg =  [module.web_sg.security_group_id]
}

module "web_sg" {
  source = "../modules/module-sg"
  vpc_variable = module.network.vpc_id
}



module "network" {
  source="../modules/network"
  private_subnet = var.private_subnet
  public_subnet = var.public_subnet
  vpc_variable = var.vpc_variable
}

module "s3" {
    source= "../modules/s3_bucket"
    bucket=var.bucket
}

module "dynamodb" {
    source ="../modules/dynamodb_table"
}