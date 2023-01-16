resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.VPC_Task1.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

  tags = {
    Project     = "VPC_Task"
    Environment = "Test"
    Team        = "DevOps"
    Created_by  = "Viktoriia_Minosian"
    Name        = "subnet1"
  }
}


resource "aws_subnet" "subnet2" {
  vpc_id                  = aws_vpc.VPC_Task1.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1b"

  tags = {
    Project     = "VPC_Task"
    Environment = "Test"
    Team        = "DevOps"
    Created_by  = "Viktoriia_Minosian"
    Name        = "subnet2"
  }
}

resource "aws_subnet" "subnet3" {
  vpc_id                  = aws_vpc.VPC_Task1.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1c"

  tags = {
    Project     = "VPC_Task"
    Environment = "Test"
    Team        = "DevOps"
    Created_by  = "Viktoriia_Minosian"
    Name        = "subnet3"
  }
}
