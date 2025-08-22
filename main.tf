// Use random and null providers and split functionality into modules

provider "random" {}
provider "null" {}

module "pet" {
  source      = "./modules/pet"
  name_prefix = var.name_prefix
  pet_count   = 3
  null_ids    = module.nulls.null_ids
}

module "nulls" {
  source     = "./modules/nulls"
  null_count = var.null_count
}
