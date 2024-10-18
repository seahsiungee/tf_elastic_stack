# resource "elasticstack_elasticsearch_snapshot_repository" "periodic-snapshots" {
#   name = "periodic-snapshots"

#   s3 {
#     bucket = "siu-ess-snapshots"
#     base_path = "siu-terraform/8.15.1/periodic"
#   }
# }

# resource "elasticstack_elasticsearch_snapshot_repository" "adhoc-snapshots" {
#   name = "adhoc-snapshots"

#   s3 {
#     bucket = "siu-ess-snapshots"
#     base_path = "siu-terraform/8.15.1/adhoc"
#     client = "default"
#   }
# }