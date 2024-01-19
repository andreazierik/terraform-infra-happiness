resource "aws_security_group" "bu_default_sg" {
  name        = "${var.name}-${var.sg-name}"
  description = "Allow some inbound rules"
  vpc_id      = var.vpc-id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.any-ip]
  }

  tags = {
    Name = "${var.name}-${var.sg-name}"
  }
}

resource "aws_security_group_rule" "bu_default_sg_rule_http" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = [var.any-ip]
  security_group_id = aws_security_group.bu_default_sg.id
}

resource "aws_security_group_rule" "bu_default_sg_rule_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["45.230.103.131/32"]
  security_group_id = aws_security_group.bu_default_sg.id
}

resource "aws_instance" "bu_ec2" {
  count                  = 1
  ami                    = var.bu_ec2_ami
  instance_type          = var.bu_ec2_type
  key_name               = var.bu_ssh_key
  vpc_security_group_ids = [aws_security_group.bu_default_sg.id]
  subnet_id              = var.bu_subnet

  user_data = <<EOF
    #!/bin/bash
    sudo apt update
    sudo apt upgrade -y
    sudo apt install nginx -y
    sudo systemctl enable --now nginx.service
  EOF
  tags = {
    Name = "${var.name}-${count.index + 1}"
  }
}