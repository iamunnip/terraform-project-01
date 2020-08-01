resource "aws_internet_gateway" "rs_igw" {
    vpc_id = var.vpc_id

    tags = {
        Name = var.igw_name
    }
}

output "out_igw_id" {
    value = aws_internet_gateway.rs_igw.id
}

output "out_igw" {
    value = aws_internet_gateway.rs_igw
}