resource "aws_security_group" "rs_sg" {
    vpc_id = var.vpc_id

    ingress {
        description = "allow traffic on port 22"
        from_port   = 22
        to_port     = 22
        protocol    = var.sg_protocol
        cidr_blocks = [var.sg_ingress_cidr_ssh]
    }

    ingress {
        description = "allow traffic on port 80"
        from_port   = 80
        to_port     = 80
        protocol    = var.sg_protocol
        cidr_blocks = [var.sg_ingress_cidr_http]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = var.sg_name
    }
}

output "out_sg_id" {
    value = aws_security_group.rs_sg.id
}