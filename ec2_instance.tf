# Configure the ec2 instance
resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-0f3f13f145e66a0a3"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.my_security_group.id]

  tags = {
    Name = "practice_ec2_instance"
  }
}