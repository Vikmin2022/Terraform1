resource "aws_lb" "alb" {
  name               = "task-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.web_sg.id]
  subnets            = [aws_subnet.subnet1.id, aws_subnet.subnet2.id, aws_subnet.subnet3.id]

  enable_deletion_protection = true

  tags = {
    Project     = "VPC_Task"
    Environment = "Test"
    Team        = "DevOps"
    Created_by  = "Viktoriia_Minosian"
    Name        = "alb_task1"
  }
}
