terraform {
  required_providers {
    ns = {
      source = "nullstone-io/ns"
    }
  }
}

data "ns_workspace" "this" {}

data "ns_connection" "s3" {
  name = "s3"
  type = "s3/aws"
}

locals {
  s3_region      = data.ns_connection.s3.outputs.region
  s3_bucket_arn  = data.ns_connection.s3.outputs.bucket_arn
  s3_bucket_name = data.ns_connection.s3.outputs.bucket_name
}
