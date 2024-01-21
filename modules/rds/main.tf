resource "aws_security_group" "database_security_group" {
  name        = "database secutiry group"
  description = "enalble mysql/aurora access on port 3306"
  vpc_id      = var.vpc-id

  ingress {
    description     = "mysql/aurora access"
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [var.ec2_sg]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.instance_name
  }
}

resource "aws_db_subnet_group" "database_subnet_group" {
  name        = "database-subnets"
  subnet_ids  = var.private-subnet
  description = "subnets for database instance"

  tags = {
    Name = "database-subnets"
  }
}

resource "aws_db_instance" "db_instance" {
  engine                 = "mysql"
  engine_version         = "8.0.33"
  multi_az               = false
  identifier             = "${var.instance_name}-wordpress"
  username               = "admin"
  password               = "7KjjwexCffp2rIP6a52z"
  instance_class         = "db.t2.micro"
  allocated_storage      = 10
  db_subnet_group_name   = aws_db_subnet_group.database_subnet_group.name
  vpc_security_group_ids = [aws_security_group.database_security_group.id]
  db_name                = "wordpress"
  skip_final_snapshot    = true
}