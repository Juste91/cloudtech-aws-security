data "aws_iam_policy_document" "ec2_trust" {
  statement {
    sid     = "AllowEC2AssumeRole"
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "security_readonly" {
  name = "CloudTech-Security-ReadOnly-Role"

  description = "CloudTech Project 3 security lab role"

  assume_role_policy = data.aws_iam_policy_document.ec2_trust.json
}

resource "aws_iam_role_policy_attachment" "s3_readonly" {
  role       = aws_iam_role.security_readonly.name
  policy_arn = aws_iam_policy.s3_readonly.arn
}
