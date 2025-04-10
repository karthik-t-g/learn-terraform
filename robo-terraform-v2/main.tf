resource "aws_instance" "frontend" {
  ami = data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = data.aws_security_groups.sg.ids
  tags = {
    Name="frontend"
  }
}
resource "aws_route53_record" "frontend"{
  zone_id = data.aws_route53_zone.zone.zone_id
  name = "frontend.dev.${var.domain_name}"
  type = "A"
  ttl = 300
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "mongo" {
  ami = data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = data.aws_security_groups.sg.ids
  tags = {
    Name="mongo"
  }
}
resource "aws_route53_record" "mongo"{
  zone_id = data.aws_route53_zone.zone.zone_id
  name = "mongo.dev.${var.domain_name}"
  type = "A"
  ttl = 300
  records = [aws_instance.mongo.private_ip]
}
resource "aws_instance" "catalogue" {
  ami = data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = data.aws_security_groups.sg.ids
  tags = {
    Name="catalogue"
  }
}
resource "aws_route53_record" "catalogue"{
  zone_id = data.aws_route53_zone.zone.zone_id
  name = "catalogue.dev.${var.domain_name}"
  type = "A"
  ttl = 300
  records = [aws_instance.catalogue.private_ip]
}