variable "vpc_cidr" {
    type = string
}

variable "vpc_tenancy" {
    type    = string
    default = "default"
}

variable "vpc_dns_support" {
    type    = bool
    default = "true"
}

variable "vpc_dns_hostnames" {
    type    = bool
    default = "true"
}

variable "vpc_name" {
    type = string
}