provider "aws" {
  region     = "aws_region"
  access_key = "aws_access_key"
  secret_key = "aws_secret_key"
}

resource "aws_vpc" "default" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subent1-public" {
  vpc_id     = aws_vpc.default.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public-subent1_name"
  }
}

resource "aws_subnet" "subent2-public" {
  vpc_id     = aws_vpc.default.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "public-subent2_name"
  }
}

resource "aws_subnet" "subent3-public" {
  vpc_id     = aws_vpc.default.id
  cidr_block = "10.0.3.0/24"

  tags = {
    Name = "public-subent3_name"
  }
}

resource "aws_route_table" "default" {
  vpc_id = aws_vpc.default.id

  route = []

  tags = {
    Name = "rt_name"
  }
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.default.id

  tags = {
    Name = "IGW_name"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.default.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_instance" "web" {
  ami = "amis,aws_region"
  availability_zone = "us-east-1a"
  instance_type = "t2.nano"
  key_name = "aws_instance.app_key_name"
  sudent_id = "aws_subent,subent1-pulic.id"
  vpc_security_groups_ids = "aws_security_group.allow_all.id"
  associate_public_ip_address = true
  tags = {
    Name = "Server-1"
    Evn = "Prod"
    Owner = "satish"
  }
}