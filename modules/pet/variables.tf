variable "name_prefix" {
  description = "Prefix for pet names"
  type        = string
  default     = "pet"
}

variable "pet_count" {
  description = "Number of pets to create"
  type        = number
  default     = 3
}

variable "null_ids" {
  description = "List of ids produced by the nulls module to create an implicit dependency"
  type        = list(string)
  default     = []
}
