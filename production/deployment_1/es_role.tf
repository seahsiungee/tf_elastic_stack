resource "elasticstack_elasticsearch_security_role" "snk-role-readonly" {
  name    = "snk-role-readonly"
  cluster = ["all"]

  indices {
    names      = ["*"]
    privileges = ["read"]
  }

  applications {
    application = "kibana-.kibana"
    privileges  = ["read"]
    resources   = ["*"]
  }

  metadata = jsonencode({
    version = 1
  })
}