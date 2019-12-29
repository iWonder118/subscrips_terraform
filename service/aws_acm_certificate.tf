resource "aws_acm_certificate" "subscrips" {
  domain_name              = "${data.aws_route53_zone.subscrips.name}" 
  subject_alternative_names = []
  validation_method        = "DNS"
}