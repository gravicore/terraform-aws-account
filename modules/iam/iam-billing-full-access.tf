# IAM policy - BillingAdmin
data "aws_iam_policy_document" "billing_full_access" {
  statement {
    actions   = ["aws-portal:*"]
    resources = ["*"]
  }
}

resource "aws_iam_policy" "billing_full_access" {
  name   = "${var.name_prefix}-billing-full-access"
  policy = "${data.aws_iam_policy_document.billing_full_access.json}"
}
