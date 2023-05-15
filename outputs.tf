output "parameter_names" {
  description = "The names of the created SSM parameters"
  value       = [for k, v in aws_ssm_parameter.parameter : v.name]
}

output "parameter_arns" {
  description = "The names of the created SSM parameters"
  value       = [for k, v in aws_ssm_parameter.parameter : v.arn]
}
