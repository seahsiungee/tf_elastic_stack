resource "ec_deployment_traffic_filter_association" "example" {
  traffic_filter_id = ec_deployment_traffic_filter.elastic-vpn.id
  deployment_id     = ec_deployment.siu-terraform.id
}