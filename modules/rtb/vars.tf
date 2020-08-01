variable "vpc_id" {
    type = string
}

variable "igw_id" {
    type = string
}

variable "rtb_ipv4_cidr" {
    type    = string
    default = "0.0.0.0/0"
}

variable "rtb_ipv6_cidr" {
    type    = string
    default = "::/0"
}

variable "rtb_name" {
    type = string
}