
variable "aws_region" {
  description = "AWS region where resources will be created."
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC."
  default     = "10.0.0.0/16"
  
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet."
  default     = "10.0.1.0/24"
  
}

variable "instance_type" {
  description = "EC2 instance type."
  default     = "t2.micro"
}

variable "instance_ami" {
  description = "AMI ID for the EC2 instance."
  default     = "ami-01c647eace872fc02" 

}

variable "new_key_pair_name" {
  description = "Name for the new SSH key pair"
}

variable "public_key_path" {
  description = "Path to your SSH public key file"
  default     = "./path/to/your/public/key.pub" # Update with the correct path
}



variable "s3_bucket_name" {
  description = "Name of the S3 bucket."
  default     = "myyy-terrr-buckett001"
}

variable "security_group_ingress" {
  description = "Ingress rule for the security group."
  default = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "iam_user_name" {
  description = "Name of the IAM user to create."
}
variable "iam_role_name" {
  description = "Name of the IAM role to create."
}
