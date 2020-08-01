resource "aws_vpc" "rs_vpc" {
    cidr_block           = var.vpc_cidr
    instance_tenancy     = var.vpc_tenancy
    enable_dns_support   = var.vpc_dns_support
    enable_dns_hostnames = var.vpc_dns_hostnames

    tags = {
        Name = var.vpc_name
    }
}

output "out_vpc_id" {
    value = aws_vpc.rs_vpc.id
}