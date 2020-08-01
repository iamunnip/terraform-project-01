output "VPC_ID" {
    value = module.vpc.out_vpc_id
}

output "SUBNET_ID" {
    value = module.subnet.out_sub_id
}

output "IGW_ID" {
    value = module.igw.out_igw_id
}

output "RTB_ID" {
    value = module.rtb.out_rtb_id
}

output "RTBAS_ID" {
    value = module.rtbas.out_rtbas_id
}

output "SG_ID" {
    value = module.sg.out_sg_id
}

output "NIC_ID" {
    value = module.nic.out_nic_id
}

output "EIP_ID" {
    value = module.eip.out_eip_id
}

output "EC2_ID" {
    value = module.ec2.out_ec2_id
}

output "EC2_PIP" {
    value = module.ec2.out_ec2_pip
}

output "EC2_EIP" {
    value = module.ec2.out_ec2_eip
}