locals {
  project_id   = "${var.project_config.name}-${random_integer.this.result}"
  organization = "organizations/${var.organization_id}"
  folder       = var.project_config.folder_id != null ? "folders/${var.project_config.folder_id}" : null
}

resource "random_integer" "this" {
  max = 99999
  min = 10000
}

module "labels" {
  source       = "git@github.com:thoughtgears/terraform-gcp-labels.git?ref=v1.0.0"
  project_name = var.project_config.name
  custom       = var.custom_labels
}

//noinspection ConflictingProperties
resource "google_project" "this" {
  org_id    = var.project_config.folder_id == null ? var.organization_id : null
  folder_id = var.project_config.folder_id != null ? local.folder : null

  name            = var.project_config.name
  project_id      = local.project_id
  billing_account = var.billing_id
  labels          = module.labels.all

  auto_create_network = var.auto_create_default_network
}
