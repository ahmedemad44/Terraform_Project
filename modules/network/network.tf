# Choosing randam numbers for naming 
resource "random_id" "id" {
  byte_length = 1
}

# Creating VPC
resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_variable

  tags = {
    Name = "VPC-${random_id.id.hex}"
  }
}

# Creating Public Subnet
resource "aws_subnet" "public" {
  vpc_id = aws_vpc.main_vpc.id
  cidr_block = var.public_subnet
  map_public_ip_on_launch = true

  tags = {
    Name = "Public_Subnet-${random_id.id.hex}"
  }
}


# Creating Private Subnet
resource "aws_subnet" "private" {
  vpc_id = aws_vpc.main_vpc.id
  cidr_block = var.private_subnet

  tags = {
    Name = "Private_Subnet-${random_id.id.hex}"
  }
}


# Creating Gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "Gateway-${random_id.id.hex}"
  }
}


# Creating Route Table
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "Route Table-${random_id.id.hex}"
  }
}

# Association 
resource "aws_route_table_association" "public" {
    subnet_id = aws_subnet.public.id
    route_table_id = aws_route_table.public.id
}
