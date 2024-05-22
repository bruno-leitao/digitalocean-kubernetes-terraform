resource "digitalocean_project" "project" {
  name        = local.do_project
  description = var.do_project_description
  purpose     = "Service or API"
  environment = var.do_environment
}
