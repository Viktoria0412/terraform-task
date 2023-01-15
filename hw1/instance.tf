resource "aws_instance" "test1" {
  ami                         = "ami-0b5eea76982371e91"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_subnets1.id
  vpc_security_group_ids      = [aws_security_group.sg.id]
  associate_public_ip_address = true
  key_name                    = "key1"
  user_data                   = <<EOF
    #!/bin/bash 
    yum install httpd -y 
    service httpd start 
    chkconfig httpd on 
    echo "Hello, world1" > /var/www/html/index.html
    EOF

  tags = {
    Name        = "test1"
    Project     = "VPC_Task"
    Environment = "Test "
    Team        = "DevOps"
    Created_by  = "Viktoryia Kochkina"
  }

}
resource "aws_instance" "test2" {
  ami                         = "ami-0b5eea76982371e91"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_subnets2.id
  vpc_security_group_ids      = [aws_security_group.sg.id]
  associate_public_ip_address = true
  key_name                    = "key1"
  user_data                   = <<EOF
    #!/bin/bash 
    yum install httpd -y 
    service httpd start 
    chkconfig httpd on 
    echo "Hello, world2" > /var/www/html/index.html
    EOF

  tags = {
    Name        = "test2"
    Project     = "VPC_Task"
    Environment = "Test "
    Team        = "DevOps"
    Created_by  = "Viktoryia Kochkina"
  }

}
resource "aws_instance" "test3" {
  ami                         = "ami-0b5eea76982371e91"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_subnets3.id
  vpc_security_group_ids      = [aws_security_group.sg.id]
  associate_public_ip_address = true
  key_name                    = "key1"
  user_data                   = <<EOF
    #!/bin/bash 
    yum install httpd -y 
    service httpd start 
    chkconfig httpd on 
    echo "Hello, world3" > /var/www/html/index.html
    EOF

  tags = {
    Name        = "test3"
    Project     = "VPC_Task"
    Environment = "Test "
    Team        = "DevOps"
    Created_by  = "Viktoryia Kochkina"
  }

}

 