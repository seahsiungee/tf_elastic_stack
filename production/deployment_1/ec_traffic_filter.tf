resource "ec_deployment_traffic_filter" "elastic-vpn" {
  name   = "elastic-vpn"
  region = "ap-southeast-1"
  type   = "ip"

  rule {
    source = "18.167.79.116/32"
  }
  rule {
    source = "52.76.115.233/32"
  }
}