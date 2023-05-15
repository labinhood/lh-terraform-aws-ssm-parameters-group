resource "aws_ssm_parameter" "parameter" {
  for_each = var.parameters

  name  = "${var.name_prefix}${each.key}"
  type  = var.should_encrypt ? "SecureString" : "String"
  value = each.value
}
