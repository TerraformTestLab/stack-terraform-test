output "pet_names" {
  description = "List of pet names created by the pet module"
  value       = module.pet.pet_names
}

output "null_ids" {
  description = "IDs of null resources created by the nulls module"
  value       = module.nulls.null_ids
}

output "pet_count" {
  description = "Number of pets created"
  value       = module.pet.pet_count
}

output "pet_ids" {
  description = "Random pet ids (internal)"
  value       = module.pet.pet_ids
}

output "pet_suffixes" {
  description = "Hex suffixes used in pet names"
  value       = module.pet.pet_suffixes
}

output "null_count" {
  description = "Number of null resources created"
  value       = module.nulls.null_count
}

output "null_triggers" {
  description = "Triggers for null resources"
  value       = module.nulls.null_triggers
}
