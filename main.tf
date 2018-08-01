terraform {
  required_version = ">= 0.11.7"
}

module "gravicore_access" {
  source = "./modules/gravicore-access"

  allow_gravicore_access    = true
  trusted_entity_account_id = "${var.trusted_entity_account_id}"
}
