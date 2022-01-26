resource "aws_iam_role_policy" "access_" {
  role   = var.app_metadata.role_name
  policy = data.aws_iam_policy_document.access.json
}

data "aws_iam_policy_document" "access" {
  statement {
    sid     = "AllowFullAccess"
    effect  = "Allow"
    actions = ["s3:*"]

    principals {
      identifiers = [local.s3_bucket_arn, "${local.s3_bucket_arn}/*"]
      type        = "AWS"
    }
  }
}
