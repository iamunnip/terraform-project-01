resource "aws_subnet" "rs_sub" {
    vpc_id            = var.vpc_id
    cidr_block        = var.sub_cidr
    availability_zone = var.sub_az

    tags = {
        Name = var.sub_name
    }
}

output "out_sub_id" {
    value = aws_subnet.rs_sub.id
}