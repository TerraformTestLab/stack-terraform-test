output "pet_names" {
  value = local.names
}

output "pet_count" {
  description = "Number of pets created by this module"
  value       = var.pet_count
}

output "pet_ids" {
  description = "Internal random_pet ids for each pet"
  value       = [for p in random_pet.pet : p.id]
}

output "pet_suffixes" {
  description = "Random suffix hex values used in pet names"
  value       = [for s in random_id.suffix : s.hex]
}
