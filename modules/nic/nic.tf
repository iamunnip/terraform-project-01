resource "aws_network_interface" "rs_nic" {
    subnet_id       = var.sub_id
    private_ips     = [var.nic_private_ip]
    security_groups = [var.sg_id]

    tags = {
        Name = var.nic_name
    }
}

output "out_nic_id" {
    value = aws_network_interface.rs_nic.id
}