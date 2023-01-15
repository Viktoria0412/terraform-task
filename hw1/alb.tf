resource "aws_lb_target_group" "tg" {
  name = "tg"

  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.my_vpc.id

  health_check {
    healthy_threshold   = 2
    interval            = 30
    protocol            = "HTTP"
    unhealthy_threshold = 2
  }
  tags = {
    Project     = "VPC_Task"
    Environment = "Test "
    Team        = "DevOps"
    Created_by  = "Viktoryia Kochkina"
  }
}

resource "aws_lb_target_group_attachment" "attach1" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = aws_instance.test1.id
  port             = 80
}
resource "aws_lb_target_group_attachment" "attach2" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = aws_instance.test2.id
  port             = 80
}
resource "aws_lb_target_group_attachment" "attach3" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = aws_instance.test3.id
  port             = 80
}


resource "aws_lb" "test" {
  name               = "test"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.sg.id]
  subnets            = [aws_subnet.public_subnets1.id, aws_subnet.public_subnets2.id, aws_subnet.public_subnets3.id]


  enable_deletion_protection = true
}


