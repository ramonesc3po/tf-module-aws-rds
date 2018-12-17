resource "aws_db_option_group" "this" {
  count = "${var.create ? 1 : 0}"

  name_prefix              = "${var.name_prefix}"
  option_group_description = "Option group database of the ${var.identifier}"
  engine_name              = "${var.engine_name}"
  major_engine_version     = "${var.major_engine_version}"

  option = ["${var.options}"]

  tags = "${merge(var.tags, var.common_tags, map("Name", format("%s", var.identifier)))}"
}
