output "env" {
  value = [
    {
      name  = "S3_BUCKET_NAME"
      value = local.s3_db_hostname
    },
    {
      name  = "S3_URL"
      value = "https://${local.s3_db_protocol}.${data.aws_region.this.name}.amazonaws.com/${local.s3_db_hostname}"
    }
  ]
}
