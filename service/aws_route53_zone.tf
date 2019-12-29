data "aws_route53_zone" "subscrips" { 
  name = "subscrips.com"
}
resource "aws_route53_record" "subscrips" {
  zone_id = "${data.aws_route53_zone.subscrips.zone_id}"
  name    = "${data.aws_route53_zone.subscrips.name}"
  type    = "A"
  alias {
    name                   = "${aws_lb.lb.dns_name}" 
    zone_id                = "${aws_lb.lb.zone_id}"
    evaluate_target_health = true
  }
}