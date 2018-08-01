#IAM role - log
resource "aws_iam_role" "logging" {
  name        = "${var.common_tags["application"]}_logging_svc"
  description = "Role for logging resources"

  assume_role_policy = "${file("${path.module}/policies/iam-flow-log.json")}"
}

resource "aws_iam_role_policy" "logging-policy" {
  name = "${var.common_tags["application"]}-logging-policy"
  role = "${aws_iam_role.logging.id}"

  policy = "${file("${path.module}/policies/iam-role-logging.json")}"
}

# IAM role - appsync
resource "aws_iam_role" "appsync" {
  name        = "${var.common_tags["application"]}_appsync_svc"
  description = "Role that UI will utilize for Lambda and Appsync"

  assume_role_policy = "${file("${path.module}/policies/iam-role-appsync.json")}"
}

resource "aws_iam_role_policy_attachment" "appsync-policy" {
  role       = "${aws_iam_role.appsync.name}"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
