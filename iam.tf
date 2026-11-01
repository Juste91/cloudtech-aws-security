data "aws_iam_policy_document" "s3_readonly" {
  statement {
    sid    = "ListBuckets"
    effect = "Allow"

    actions = [
      "s3:ListAllMyBuckets"
    ]

    resources = ["*"]
  }
}

resource "aws_iam_policy" "s3_readonly" {
  name        = "CloudTech-S3-ListOnly-Policy"
  description = "CloudTech Project 3 least privilege S3 listing policy"

  policy = data.aws_iam_policy_document.s3_readonly.json
}
