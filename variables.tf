variable "name_prefix" {
  description = "Prefix to use when creating pet resources"
  type        = string
  default     = "stack-pet"
}

variable "null_count" {
  description = "Number of null resources to create in the nulls module"
  type        = number
  default     = 1
}
