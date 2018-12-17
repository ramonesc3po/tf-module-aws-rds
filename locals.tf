locals {
  common_tags = {
    Organization = "${var.db_organization}"
    Tier         = "${var.db_tier}"
  }
}
