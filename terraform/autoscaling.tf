resource "aws_launch_configuration" "app" {
  name          = "app-launch-configuration"
  image_id      = "ami-12345678"
  instance_type = "t2.micro"
  user_data     = file("user_data.sh")
  security_groups = [aws_security_group.instance.id]
}

resource "aws_autoscaling_group" "app" {
  launch_configuration = aws_launch_configuration.app.id
  min_size              = 1
  max_size              = 3
  vpc_zone_identifier   = aws_subnet.private[*].id
  tag {
    key                 = "Name"
    value               = "app-instance"
    propagate_at_launch = true
  }
}
