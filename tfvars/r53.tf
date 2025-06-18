resource "aws_route53_record" "expence" {
    count = length(var.ec2_names)
  zone_id         = var.zone_id
  type            = "A"
  ttl             = "1"
  name            = var.ec2_names[count.index] == "frontend" && var.environment == "prod" ? var.zone_name : "${var.ec2_names[count.index]}-${var.environment}.${var.zone_name}"
  records         = var.ec2_names[count.index] == "frontend" && var.environment == "prod" ? [aws_instance.my_server[count.index].public_ip] : [aws_instance.my_server[count.index].private_ip]
  
  allow_overwrite = true
}