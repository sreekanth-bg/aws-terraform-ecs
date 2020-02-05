provider "aws" {
    region = "${var.aws_region}"
    profile = "devops" 
}

variable "region" {
    description = "Region Name"
    default = "ca-central-1"
}

variable "aws_region" {
    description = "EC2 Region tor the VPC"
    default = "ca-central-1"
}

variable "remote_cidr" {
    description = "CIDR from Remote Testing Source"
    default = "49.206.15.141"
}
    
variable "vpc_cidr" {
    description = "CIDR for the whole VPC"
    default = "10.0.0.0/16"
}
    
variable "public_subnet_2a_cidr" { 
    description = "CIOR for the Public 2a Subnet"
    default = "10.0.0.0/25" 
}

variable "public_subnet_2b_cidr" { 
    description = "CIOR for the Public 2b Subnet"
    default = "10.0.0.128/25"
}

variable "private_bd_subnet_2a_cidr" { 
    description = "CIOR for the Private 2a DB Subnet"
    default = "10.0.2.0/25"
}

variable "private_db_subnet_2b_cidr" { 
    description = "CIOR for the Private 2b DB Subnet"
    default = "10.0.2.128/25"
}

variable "key_path" { 
    description = "SSH Public Key Path"
    default = "/home/sree/.ssh/id_rsa.pub"
    #default = "/mnt/c/Users/sreekanth.govindaiah/OneDrive/keys/ubuntu0108.pem"
}

variable "asg_jenkins_slave_min" {
    description = "Auto scaling minimum size"
    default = "1"
}

variable "asg_jenkins_slave_max" {
    description = "Auto scaling maximum size"
    default = "2"
}

variable "asg_jenkins_slave_desired" {
    description = "Auto scaling desired size"
    default = "2"
}

variable "asg_jenkins_master_min" {
    description = "Auto scaling minimum size"
    default = "1"
}

variable "asg_jenkins_master_max" {
    description = "Auto scaling maximum size"
    default = "1"
}

variable "asg_jenkins_master_desired" {
    description = "Auto scaling desired size"
    default = "1"
}

variable "asg_git_min" {
    description = "Auto scaling minimum size"
    default = "1"
}

variable "asg_git_max" {
    description = "Auto scaling maximum size"
    default = "2"
}

variable "asg_git_desired" {
    description = "Auto scaling desired size"
    default = "1"
}

variable "data_volume_type" {
    description = "EBS volume Type"
    default = "gp2"
}

variable "data_volume_size" {
    description = "EBS volume Size"
    default = "50"
}

variable "root_block_device_size" {
    description = "Root EBS volume Size"
    default = "50"
}

variable "gitlab_postgresql_password" {
    default = "supersecret"
}

variable "git_rds_multiAZ" {
    default = "false"
}

variable "availability_zones" {
    type = "list"
    default = ["ca-central-1a", "ca-central-1b"]
}
