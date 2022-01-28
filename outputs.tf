output "env" {
  value = [
    {
      name  = "S3_BUCKET_NAME"
      value = local.s3_db_hostname
    }
  ]
}
