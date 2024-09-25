variable "project" {
  type = string
}

variable "environment" {
  type = string
}
# optional variables
variable "cidr_block" {
    type = string
    default = "10.10.0.0/16"

}

variable "enable_dns_hostnames" {
    type = bool
    default = true
  
}

variable "common_tags" {
    type = map
    default = {}
}

variable "vpc_tags" {
  type = map 
  default = {}
}

variable "igw_tags" {
  type = map 
  default = {}
}

variable "public_cidr_block" {
  type = list 
  validation {
    condition = length(var.public_cidr_block) == 2
    error_message = "please provide the 2 valid public cidr blocks"
  }
}

variable "public_subnet_tags" {
  type = map 
  default = {}
}

variable "private_cidr_block" {
  type = list 
  validation {
    condition = length(var.private_cidr_block) == 2
    error_message = "please provide the 2 valid public cidr blocks"
  }
}

variable "private_subnet_tags" {
  type = map 
  default = {}
}


variable "database_cidr_block" {
  type = list 
  validation {
    condition = length(var.database_cidr_block) == 2
    error_message = "please provide the 2 valid public cidr blocks"
  }
}

variable "database_subnet_tags" {
  type = map 
  default = {}
}

variable "db_subnet_group_tags" {
  type = map 
  default = {}
}

variable "nat_gw_tags" {
  type = map 
  default = {}
}

variable "public_route_table_vars" {
  type = map 
  default = {}
}

variable "private_route_table_vars" {
  type = map 
  default = {}
}

variable "database_route_table_vars" {
  type = map 
  default = {}
}
