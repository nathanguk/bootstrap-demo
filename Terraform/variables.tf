variable "instance_name" {
  descritpion = "AWS Instance Name"
  default     = "Windows1"
}

variable "key_name" {
  description = "Name of the EC2 keypair to use in AWS."
  default     = "LMLinux"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "eu-west-2"
}

variable "subnet_id" {
  description = "AWS Subnet launch servers."
  default     = "subnet-04743a7f"
}


variable "ami_id" {
  descritpion = "AWS AMI Image Id"
  default     = "ami-9c6b8dfb"
}

variable "instance_type" {
  descritpion = "AWS Instance Size"
  default     = "t2.micro"
}

