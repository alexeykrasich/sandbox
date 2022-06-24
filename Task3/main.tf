provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "WebServer_Ubuntu" {
  ami                    = "ami-0440e5026412ff23f"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.main_subnet.id
  vpc_security_group_ids = [aws_security_group.WebServer_Security_Group.id]
  user_data              = file("ScriptWebServer.sh")

  tags = {
    Name  = "Task3_WebServer_Ubuntu"
    Owner = "Alexey Krasichonak"
  }
}

resource "aws_instance" "Private_CentOS" {
  ami                    = "ami-077b62cf33d29a995"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.database_subnet.id
  vpc_security_group_ids = [aws_security_group.WebServer_Security_Group.id]


  tags = {
    Name  = "Task3_Private_CentOS"
    Owner = "Alexey Krasichonak"
  }
}

resource "aws_vpc" "sandbox-VPC" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Main"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.sandbox-VPC.id

  tags = {
    Name = "Main"
  }
}

resource "aws_subnet" "main_subnet" {
  vpc_id                  = aws_vpc.sandbox-VPC.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "Main subnet"
  }
}

resource "aws_subnet" "database_subnet" {
  vpc_id     = aws_vpc.sandbox-VPC.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "Local subnet"
  }
}

resource "aws_route_table" "For_main" {
  vpc_id = aws_vpc.sandbox-VPC.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "FreeWeb for main"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.main_subnet.id
  route_table_id = aws_route_table.For_main.id
}

resource "aws_route_table" "For_Private" {
  vpc_id = aws_vpc.sandbox-VPC.id

  tags = {
    Name = "Local for private"
  }
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.database_subnet.id
  route_table_id = aws_route_table.For_Private.id
}

resource "aws_security_group" "WebServer_Security_Group" {
  name        = "WebServer Security Group"
  description = "Security Group HTTP/S ICMP SSH"
  vpc_id      = aws_vpc.sandbox-VPC.id
  tags = {
    Name = "WebServer SG"
  }
  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "icmp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
