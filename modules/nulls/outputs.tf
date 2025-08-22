output "null_ids" {
  value = [for n in null_resource.example : n.id]
}

output "null_count" {
  description = "Number of null resources created"
  value       = var.null_count
}

output "null_triggers" {
  description = "Triggers map for each null resource"
  value       = [for n in null_resource.example : n.triggers]
}
