# =====================================================
# Create a generic VPC
# =====================================================
######
# VPC
######
resource "aws_vpc" "this" {
  cidr_block           = "${var.cidr}"

  tags = "${merge(var.tags, map("Name", format("vpc-%s", var.name)))}"
}