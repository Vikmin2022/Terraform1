resource "aws_instance" "Terraform_Task1_1" {
  ami                         = "ami-0b5eea76982371e91"
  instance_type               = "t2.micro"
  key_name                    = "bastion-key"
  subnet_id                   = aws_subnet.subnet1.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.web_sg.id]


  user_data = <<EOF
   #!/bin/bash
   yum install httpd -y
   service httpd start
   chkconfig httpd on
   echo "Hello, world from EC2-1" > /var/www/html/index.html
   EOF


  tags = {
    Project     = "VPC_Task"
    Environment = "Test"
    Team        = "DevOps"
    Created_by  = "Viktoriia_Minosian"
    Name        = "Terraform_Task1_1"
  }
}

resource "aws_instance" "Terraform_Task1_2" {
  ami                         = "ami-0b5eea76982371e91"
  instance_type               = "t2.micro"
  key_name                    = "bastion-key"
  subnet_id                   = aws_subnet.subnet2.id
  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.web_sg.id]


  user_data = <<EOF
   #!/bin/bash
   yum install httpd -y
   service httpd start
   chkconfig httpd on
   echo "Hello, world from EC2-1" > /var/www/html/index.html
   EOF


  tags = {
    Project     = "VPC_Task"
    Environment = "Test"
    Team        = "DevOps"
    Created_by  = "Viktoriia_Minosian"
    Name        = "Terraform_Task1_2"
  }
}

resource "aws_instance" "Terraform_Task1_3" {
  ami                         = "ami-0b5eea76982371e91"
  instance_type               = "t2.micro"
  key_name                    = "bastion-key"
  subnet_id                   = aws_subnet.subnet3.id
  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = <<EOF
   #!/bin/bash
   yum install httpd -y
   service httpd start
   chkconfig httpd on
   echo "Hello, world from EC2-1" > /var/www/html/index.html
   EOF

  tags = {
    Project     = "VPC_Task"
    Environment = "Test"
    Team        = "DevOps"
    Created_by  = "Viktoriia_Minosian"
    Name        = "Terraform_Task1_3"
  }
}


