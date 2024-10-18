resource "ec_deployment_elasticsearch_keystore" "aws-s3-access-key" {
  deployment_id = ec_deployment.siu-terraform.id
  setting_name  = "s3.client.default.access_key"
  value         = "access_key_value"
}

resource "ec_deployment_elasticsearch_keystore" "aws-s3-secret-key" {
  deployment_id = ec_deployment.siu-terraform.id
  setting_name  = "s3.client.default.secret_key"
  value         = "secret_key_value"
}