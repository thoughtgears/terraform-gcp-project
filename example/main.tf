# Should come from the project module, but will define it in the template just to show off how a test can be made
variable "organization_id" {}
variable "billing_id" {}

locals {
  project_config = {
    name = "example"
  }
}

module "project" {
  source          = "../"
  billing_id      = var.billing_id
  organization_id = var.organization_id
  project_config  = local.project_config
}

output "id" {
  value = module.project.id
}

output "name" {
  value = module.project.name
}

output "number" {
  value = module.project.number
}
