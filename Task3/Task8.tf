#--------------------------------------------Delete after installing
resource "aws_eip" "lb" {
  vpc        = true
  depends_on = [aws_internet_gateway.gw]
}

resource "aws_nat_gateway" "private_to_public" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.main_subnet.id
  tags = {
    Name = "Pr to Pub NAT"
  }

  depends_on = [aws_internet_gateway.gw]
}
#--------------------------------------------/Delete after installing
resource "aws_instance" "Private_CentOS" {
  ami                    = data.aws_ami.centOS.id
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.database_subnet.id
  vpc_security_group_ids = [aws_security_group.Private_Security_Group.id]
  private_ip             = "10.0.2.5"
  key_name               = "ssh-key1"
  user_data              = file("ScriptWebServer.sh")
  depends_on             = [aws_nat_gateway.private_to_public] #-----Delete after installing

  tags = {
    Name  = "Task3_Private_CentOS"
    Owner = "Alexey Krasichonak"
  }
}

resource "aws_route_table" "For_Private" {
  vpc_id = aws_vpc.sandbox-VPC.id
  #--------------------------------------------Comment after installing
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.private_to_public.id
  }
  #-------------------------------------------/Comment after installing
  tags = {
    Name = "Local for private"
  }
}
