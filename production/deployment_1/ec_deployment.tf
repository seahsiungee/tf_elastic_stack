resource "ec_deployment" "siu-terraform" {
  name                   = "siu-terraform"
  alias                  = "siu-terraform"
  region                 = "ap-southeast-1"
  version                = "8.15.1"
  deployment_template_id = "aws-compute-optimized-v3"

  elasticsearch = {
    hot = {
      size       = "4g"
      zone_count = 1
      autoscaling = {
        autoscale = false
      }
    }

    frozen = {
      size       = "4g"
      zone_count = 1
      autoscaling = {
        autoscale = false
      }
    }

    config = {
      # The URL domain suffix that is used in this example is often different for other Elasticsearch Service regions. Please check the appropriate domain suffix for your used region.
      user_settings_yaml = templatefile("./ec_es.yml", { kibana_url = "https://siu-terraform.kb.ap-southeast-1.aws.found.io:9243" })
    }
  }

  kibana = {
    topology = {}

    config = {
      user_settings_yaml = file("./ec_kb.yml")
    }
  }

  integrations_server = {}
}

output "elasticsearch_endpoint" {
  value = ec_deployment.siu-terraform.elasticsearch.https_endpoint
}

output "kibana_endpoint" {
  value = ec_deployment.siu-terraform.kibana.https_endpoint
}

output "elasticsearch_username" {
  value = ec_deployment.siu-terraform.elasticsearch_username
}

output "elasticsearch_password" {
  value = ec_deployment.siu-terraform.elasticsearch_password
  sensitive = true
}