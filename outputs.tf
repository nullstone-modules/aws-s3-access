output "env" {
  value = [
    {
      name  = "S3_BUCKET_NAME"
      value = local.s3_db_hostname
    },
    {
      name  = "S3_BUCKET_ARN",
      value = local.s3_db_arn
    },
    {
      name  = "S3_URL"
      value = local.s3_db_arn
    },
    {
      name  = "S3_BUCKET_REGION",
      value = local.s3_db_region
    }
  ]
}
