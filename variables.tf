#parametarizing the vpc name and cidr block 
variable chianeng_vpc01 {
  type        = string
  default     = "chianeng_vpc01"
  description = "vpc name"
}

variable chianeng_vpc01_cidr {
  type        = string
  default     = "10.0.0.0/16"
  description = "chianeng_vpc01_cidr"
}

# parametarizing the pub and pri subnets cidrs
variable pub_subnet01_cidr {
  type        = string
  default     = "10.0.1.0/24"
  description = "pub_subnet01 cidr"
}

variable pri_subnet02_cidr {
  type        = string
  default     = "10.0.2.0/24"
  description = "pri_subnet01 cidr"
}

# parametarising the AZs

variable azs {
  type        = list
  default     = ["us-east-1a","us-east-1b"]
  description = "availability zones"
}

# parametarizing the ec2 instance name
variable web_server01 {
  type        = string
  default     = "web_server01"
  description = "name of instance in us-east-1a"
}

# parametarizing the ec2 instance ami
variable web_server01_ami {
  type        = string
  default     = "ami-0715c1897453cabd1"
  description = "web_server01 ami"
}
# parametarizing the ec2 instance type
variable web_server01_instance_type {
  type        = string
  default     = "t2.micro"
  description = "web_server01 instance type"
}

# parametarizing the infrastructure deployment environment
variable env {
  type        = string
  default     = "dev"
  description = "locals vars"
}

# parametarizing the project team
variable team {
  type        = string
  default     = "alpha"
  description = "locals vars"
}

