resource "aws_eip" "rs_eip" {
    vpc                       = var.eip_vpc
    network_interface         = var.eip_nic
    associate_with_private_ip = var.eip_nic_pip
    depends_on                = [var.eip_depends_on]

    tags = {
        Name = var.eip_name
    }
}

output "out_eip_id" {
    value = aws_eip.rs_eip.id
}