data "aws_route53_zone" "andreazi" {
  name         = "aws.andreazi.com"
  private_zone = false
}

resource "aws_route53_record" "bloguper" {
  zone_id = data.aws_route53_zone.andreazi.id
  name    = "blogupper.${data.aws_route53_zone.andreazi.name}"
  type    = "A"
  ttl     = 300
  records = var.ec2-public-ip
}