resource "aws_route53_zone" "primary" {
  name = "song-picture-search.com"
}

# resource "aws_route53_record" "www" {
#    zone_id = "ZNUSNIH3530EG"
#    name = "www.song-picture-search.work"
#    type = "A"
#    ttl = "300"
#    records = ["210.239.46.254"]
# }