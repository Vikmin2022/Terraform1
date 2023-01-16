# Create a VPC
resource "aws_vpc" "VPC_Task1" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Project     = "VPC_Task"
    Environment = "Test"
    Team        = "DevOps"
    Created_by  = "Viktoriia_Minosian"
    Name        = "VPC_Task1"
  }
}
