variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "amis" {
    description = "AMIs by region"
    default = {
        us-east-1 = "ami-97785bed" # uduntu 14.04 LTS
    us-east-2 = "ami-f63B1193" # uduntu 14.04 LTS
    us-west-1 = "ami-824c4ee2" # uduntu 14.04 LTS
    us-west-1 = "ami-f2d3638a" # uduntu 14.04 LTS
    }
}
variable "vpc_cidr" {}
variable "vpc_name" {}
variable "IGW_name" {}
variable "key_cidr" {}
variable "public_subent1_cidr" {}
variable "public_subent2_cidr" {}
variable "public_subent3_cidr" {}
variable "private_subent_cidr" {}
variable "public_subent1_name" {}
variable "public_subent2_name" {}
variable "public_subent3_name" {}
variable "private_subent_name" {}
variable "azs" {
  description = "Run the EC2 Instance in these Availability Zones"
  type = "list"
  default = ["us-east-1a", "us-east-1b", "us-eat-1c"]
}

variable "environment" { default = "dev" }
variable "instance_type" {
  type = "map"
  default = {
    dev = "t2.nano"
    test = "t2.micro"
    prod = "t2.medium"
    }
  }
}

variable "instance_count" {
  description = "Number of EC2 instances to deploy"
  type        = number
}

variable "instance_type" {
  description = "Type of EC2 instance to use"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for EC2 instances"
  type        = list(string)
}

variable "security_group_ids" {
  description = "Security group IDs for EC2 instances"
  type        = list(string)
}

variable "tags" {
  description = "Tags for instances"
  type        = map
  default     = {}
}