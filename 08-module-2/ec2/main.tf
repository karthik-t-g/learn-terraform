resource "aws_instance" "test" {
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t3.small"
  vpc_security_group_ids = ["sg-01cbddfc072527f97"]

  tags = {
    Name = "test"
  }
}

output "input" {
  value = aws_instance.test.private_ip

}
