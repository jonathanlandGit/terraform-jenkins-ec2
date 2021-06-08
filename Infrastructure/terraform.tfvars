
region = "us-east-1"

environment = "Development"

# Intro configs
vpc_cidr = "10.0.0.0/16"
public_subnet_1_cidr  = "10.0.1.0/24"
public_subnet_2_cidr  = "10.0.2.0/24"
public_subnet_3_cidr  = "10.0.3.0/24"
private_subnet_1_cidr = "10.0.10.0/24"
private_subnet_2_cidr = "10.0.11.0/24"
private_subnet_3_cidr = "10.0.12.0/24"

# AMI - currently set to latest version of Linux2 (change as needed)
instance_type = "t2.micro"
instance_ami = "ami-0d5eff06f840b45e9"

# Keypair name goes here
keyname = "jenkins-key"
