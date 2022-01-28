terraform {
  required_providers {
    ns = {
      source = "nullstone-io/ns"
    }
  }
}

data "ns_workspace" "this" {}

data "ns_connection" "s3_bucket" {
  name = "s3_bucket"
  type = "bucket/aws-s3"
}

locals {
  s3_db_arn      = data.ns_connection.s3_bucket.outputs.db_arn
  s3_db_protocol = data.ns_connection.s3_bucket.outputs.db_protocol
  s3_db_hostname = data.ns_connection.s3_bucket.outputs.db_hostname
  s3_db_port     = data.ns_connection.s3_bucket.outputs.db_port
}
