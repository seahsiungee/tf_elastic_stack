provider "elasticstack" {
  # Use our Elastic Cloud deployment outputs for connection details.
  # This also allows the provider to create the proper relationships between the two resources.
  elasticsearch {
    endpoints = ["${ec_deployment.siu-terraform.elasticsearch.https_endpoint}"]
    username  = ec_deployment.siu-terraform.elasticsearch_username
    password  = ec_deployment.siu-terraform.elasticsearch_password
  }
}