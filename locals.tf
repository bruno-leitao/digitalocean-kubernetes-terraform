locals {
  do_project  = "Tourissmo ${var.do_environment}"
  description = "DigitalOcean Project Name"
}

locals {
  do_vpc_name = "tourissmo-${var.do_environment}-vpc"
  do_tags     = ["${var.do_environment}", "argocd", "website", "api", "backoffice", "elasticsearch", "kibana"]
}
