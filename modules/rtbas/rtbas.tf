resource "aws_route_table_association" "rs_rtbsa" {
    subnet_id      = var.sub_id
    route_table_id = var.rtb_id
}

output "out_rtbas_id" {
    value = aws_route_table_association.rs_rtbsa.id
}