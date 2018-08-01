terraform {
  required_version = ">= 0.11.7"
}

locals {
  name_prefix = "${join("-",
    list(
      var.tags["Organization"],
      var.tags["Application"],
      var.tags["Environment"],
      var.tags["Container"],
      var.tags["Component"]
    )
  )}"
}
