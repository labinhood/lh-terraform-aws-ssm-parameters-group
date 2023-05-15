variable "parameters" {
  description = "Map of parameter names to values to generate Parameter Store Parameters for"

  type    = map(string)
  default = {}
}

variable "should_encrypt" {
  description = "Boolean indicating if the parameters should be encrypted or not"
  type        = bool
  default     = false
}

variable "name_prefix" {
  description = "Prefix to be added to the name of each parameter"
  type        = string
  default     = ""
}
