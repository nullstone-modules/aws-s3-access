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
  type = "aws-s3"
}

locals {
  s3_region      = data.ns_connection.s3_bucket.outputs.region
  s3_bucket_arn  = data.ns_connection.s3_bucket.outputs.bucket_arn
  s3_bucket_name = data.ns_connection.s3_bucket.outputs.bucket_name
}
