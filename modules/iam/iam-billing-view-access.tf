# IAM policy - BillingReviewer
data "aws_iam_policy_document" "billing_view_access" {
  statement {
    actions = [
      "aws-portal:ViewPaymentMethods",
      "aws-portal:ViewAccount",
      "aws-portal:ViewBilling",
      "aws-portal:ViewUsage",
    ]

    resources = ["*"]
  }
}

resource "aws_iam_policy" "billing_view_access" {
  name   = "${var.name_prefix}-billing-view-access"
  policy = "${data.aws_iam_policy_document.billing_view_access.json}"
}
