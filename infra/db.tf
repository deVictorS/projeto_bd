#Configuração do banco de dados MySQL usando AWS RDS
# Este arquivo define os recursos necessários para criar uma instância RDS MySQL, incluindo a VPC, sub-redes, gateway de internet, tabela de rotas e grupo de segurança.

# -----------------------------
# VPC
# -----------------------------

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}

# -----------------------------
# Subnets
# -----------------------------

resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "subnet2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
}

# -----------------------------
# Internet Gateway
# -----------------------------

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
}

# -----------------------------
# Route Table
# -----------------------------

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}

resource "aws_route_table_association" "rta1" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "rta2" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.rt.id
}

# -----------------------------
# Security Group
# -----------------------------

resource "aws_security_group" "mysql_sg" {
  name        = "mysql-security-group"
  description = "Permite acesso MySQL"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "MySQL"

    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }
}

# -----------------------------
# DB Subnet Group
# -----------------------------

resource "aws_db_subnet_group" "db_subnet_group" {
  name = "mysql-subnet-group"

  subnet_ids = [
    aws_subnet.subnet1.id,
    aws_subnet.subnet2.id
  ]
}

# -----------------------------
# RDS MySQL
# -----------------------------

resource "aws_db_instance" "mysql" {
  identifier = "mysql-rds"

  allocated_storage = 20

  engine         = "mysql"
  engine_version = "8.0"

  instance_class = "db.t4g.micro"

  db_name  = var.db_name
  username = var.db_user
  password = var.db_password

  publicly_accessible = true

  skip_final_snapshot = true

  vpc_security_group_ids = [
    aws_security_group.mysql_sg.id
  ]

  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name
}