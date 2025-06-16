resource "aws_instance" "web" {
  ami           = "ami-0c7217cdde317cfec" 
  instance_type = "t2.micro"
  key_name      = "terraform-key"

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Hello from Terraform</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "Terraform-Web"
  }
}
