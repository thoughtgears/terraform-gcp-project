output "id" {
  value = trimprefix(google_project.this.id, "projects/")
}

output "name" {
  value = google_project.this.name
}

output "number" {
  value = google_project.this.number
}

output "organization_id" {
  value = var.organization_id
}

output "folder" {
  value = var.project_config.folder_id != null ? local.folder : null
}

output "billing_id" {
  value = var.billing_id
}

output "labels" {
  value = module.labels.all
}
