resource "aws_instance" "rs_ec2" {
    ami               = var.ec2_ami
    instance_type     = var.ec2_type
    availability_zone = var.ec2_az
    key_name          = var.ec2_key_name

    network_interface {
        device_index         = var.ec2_device_index
        network_interface_id = var.ec2_nic_id
    }

    user_data = <<-EOF
                #!/bin/bash
                sudo apt update -y
                sudo apt install apache2 -y
                sudo bash -c 'echo this vm is provisioned using terraform > /var/www/html/index.html'
                EOF

    tags = {
        Name = var.ec2_name
    }
}

output "out_ec2_id" {
    value = aws_instance.rs_ec2.id
}

output "out_ec2_pip" {
    value = aws_instance.rs_ec2.private_ip
}

output "out_ec2_eip" {
    value = aws_instance.rs_ec2.public_ip
}