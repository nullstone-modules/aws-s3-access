output "secrets" {
  value = [
    {
      name  = "S3_BUCKET_NAME"
      value = local.s3_bucket_name
    }
  ]
}
