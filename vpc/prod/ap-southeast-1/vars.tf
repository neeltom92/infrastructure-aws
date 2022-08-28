variable "environment" {
  description = "Deployment Environment"
  default     = "stg"
}

variable "vpc_cidr" {
  description = "CIDR block of the vpc"
  default     = "10.93.0.0/16"

}

variable "public_subnets_cidr" {
  type        = list(any)
  description = "CIDR block for Public Subnet"
  default     = ["10.93.0.0/24", "10.93.1.0/24", "10.93.2.0/24"]
}

variable "private_subnets_cidr" {
  type        = list(any)
  description = "CIDR block for Private Subnet"
  default     = ["10.93.3.0/24", "10.93.4.0/24", "10.93.5.0/24"]

}

variable "region" {
  description = "Region in which the VPC will be launched"
  default     = "ap-southeast-1"
}



