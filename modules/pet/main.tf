
resource "random_pet" "pet" {
  count  = var.pet_count
  length = 2
}

resource "random_id" "suffix" {
  count       = var.pet_count
  byte_length = 2
}

locals {
  # include one of the null_ids (if present) into names to create an implicit dependency
  null_token = length(var.null_ids) > 0 ? var.null_ids[0] : "no-null"

  pet_ids = [for p in random_pet.pet : p.id]
  suffixes = [for s in random_id.suffix : s.hex]

  names = [for i in range(var.pet_count) : "${var.name_prefix}-${local.null_token}-${local.pet_ids[i]}-${local.suffixes[i]}"]
}

