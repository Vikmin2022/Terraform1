resource "aws_lb_target_group" "TGalb-task1" {
  name     = "TGalb-task1"
  port     = 80
  protocol = "TCP"
  vpc_id   = aws_vpc.VPC_Task1.id

  health_check {
    healthy_threshold   = 2
    interval            = 30
    protocol            = "HTTP"
    unhealthy_threshold = 2

  }
}

resource "aws_lb_target_group_attachment" "Instance1" {
  target_group_arn = aws_lb_target_group.TGalb-task1.arn
  target_id        = aws_instance.Terraform_Task1_1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "Instance2" {
  target_group_arn = aws_lb_target_group.TGalb-task1.arn
  target_id        = aws_instance.Terraform_Task1_2.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "Instance3" {
  target_group_arn = aws_lb_target_group.TGalb-task1.arn
  target_id        = aws_instance.Terraform_Task1_3.id
  port             = 80

}
