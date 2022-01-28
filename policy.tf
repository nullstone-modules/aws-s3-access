resource "aws_iam_policy" "this" {
  name   = local.resource_name
  policy = data.aws_iam_policy_document.this.json
}

resource "aws_iam_role_policy_attachment" "this" {
  role       = var.app_metadata["role_name"]
  policy_arn = aws_iam_policy.this.arn
}

data "aws_iam_policy_document" "this" {
  statement {
    sid     = "AllowFullAccess"
    effect  = "Allow"
    actions = ["s3:*"]

    resources = [local.s3_db_arn, "${local.s3_db_arn}/*"]
  }
}
