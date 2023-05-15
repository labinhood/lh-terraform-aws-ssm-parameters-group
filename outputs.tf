output "parameter_names" {
  description = "The names of the created SSM parameters"
  value       = aws_ssm_parameter.parameter[*].name
}
