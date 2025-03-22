resource "aws_route53_record" "frontend" {
  zone_id = "Z00444301TMJWUTBVLW04"
  name    = "test1.karthi.com"
  type    = "A"
  ttl     = 15
  records = [var.private_ip]

}

variable "private_ip" {}