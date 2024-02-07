resource "aws_launch_template" "examplelc" {
  
  name          = "example-l"
  image_id      = "ami-0780837dd83465d73" # Specify the AMI ID
  instance_type = "t2.micro"     # Specify the instance type

    network_interfaces {
    associate_public_ip_address = true
    security_groups = ["${aws_security_group.demosg2.id}"]
    # subnet_id = aws_subnet.name1.id 
    delete_on_termination = true
  }
  user_data = base64encode(<<EOF
#!/bin/sh
yum install -y nginx
service nginx start
EOF

  )
  # "${file("data.sh")}"      
}