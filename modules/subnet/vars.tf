variable "vpc_id" {
    type = string
}

variable "sub_cidr" {
    type = string
}

variable "sub_az" {
    type    = string
    default = "us-east-1a"
}

variable "sub_name" {
    type = string
}