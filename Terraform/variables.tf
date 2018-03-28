variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "eu-west-2"
}

variable "aws_credfile" {
  description = "AWS Credential File."
  default     = "/Users/nathang/.aws/credentials"
}

variable "aws_profile" {
  description = "AWS Credentail Profile"
  default     = "ans-poc"
}

variable "instance_name" {
  description = "AWS Instance Name"
  default     = "Windows1"
}

variable "key_name" {
  description = "Name of the EC2 keypair to use in AWS."
  default     = "LMLinux"
}

variable "subnet_id" {
  description = "AWS Subnet to launch servers."
  default     = "subnet-04743a7f"
}

variable "vpc_id" {
  description = "AWS VPC to launch servers."
  default     = "vpc-5c623e35"
}

variable "ami_id" {
  description = "AWS AMI Image Id"
  default     = "ami-9c6b8dfb"
}

variable "instance_type" {
  description = "AWS Instance Size"
  default     = "t2.micro"
}

variable "parameter_1" {
  description = "parameter_1"
  default     = "folder"
}

variable "parameter_2" {
  description = "parameter_2"
  default     = "file"
}