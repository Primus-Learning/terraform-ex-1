# create application load balancer
resource "aws_lb" "application_load_balancer" {
  name               = "${var.tomcat_server}-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.security_group.webapp_sg]
  subnets.id            = aws_subnet.public_subnet.id
  enable_deletion_protection = false

  tags   = {
    Name = "${tomcat_server}-alb"
  }
}

# create target group
resource "aws_lb_target_group" "alb_target_group" {
  name        = "${var.application_load_balancer}-tg"
  port        = 80
  protocol    = HTTP
  target_type = ip
  vpc_id      = aws_vpc.webapp_vpc.id
  health_check {
    enabled             = true
  }

  lifecycle {
    create_before_destroy = true
  }
}

# create a listener on port 80 with redirect action
resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_lb.load_balancer.arn
  port              = "80"
  protocol          = "HTTP"

   default_action {
    type = "fixed-response"
    }
  }
