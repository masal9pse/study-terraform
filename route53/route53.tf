resource "aws_route53_zone" "node_chat" {
   name = "node.chat"
}

resource "aws_route53_record" "www" {
   zone_id = "ZNUSNIH3530EG"
   name = "www.node.chat"
   type = "A"
   ttl = "300"
   records = ["210.239.46.254"]
}