resource "aws_autoscaling_group" "example" {
  name                 = "example-asg"
  # launch_configuration = aws_launch_template.examplelc.name
  launch_template {
    id      = aws_launch_template.examplelc.id
    version = "$Latest"  # Use the latest version of the launch template
  }
  min_size             = 1          # Minimum number of instances
  max_size             = 2           # Maximum number of instances
  desired_capacity     = 1            # Desired number of instances
  load_balancers = [ "${aws_elb.web_elb.id}"]

  # Specify the subnet IDs where the instances will be launched
  vpc_zone_identifier = [aws_subnet.subnet-a.id, aws_subnet.subnet-b.id, aws_subnet.subnet-c.id]
}