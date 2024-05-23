variable "do_api_token" {
  default     = ""
  description = "DigitalOcean API token"
}

variable "do_project_description" {
  default     = "Tourissmo project"
  description = "DigitalOcean Project Description"
}

variable "do_environment" {
  default     = ""
  description = "DigitalOcean Project Environment"
}

variable "do_region" {
  default     = "ams3"
  description = "DigitalOcean VPC Network Region"
}

variable "do_vpc_ip_range" {
  default     = ""
  description = "DigitalOcean VPC Network IP Range"
}

variable "doks_enabled" {
  type        = bool
  default     = true
  description = "Whether to create the resources. Set to `false` to prevent the module from creating any resources."
}

variable "doks_version" {
  default     = "1.30.1-do.0"
  description = "DigitalOcean Kubernetes Cluster Version."
}

variable "doks_auto_upgrade" {
  type        = bool
  default     = false
  description = "Enable auto upgrade during maintenance window."
}

variable "doks_surge_upgrade" {
  type        = bool
  default     = false
  description = "Enable surge upgrade during maintenance window."
}

variable "doks_ha" {
  type        = bool
  default     = false
  description = "Enable high availability control plane."
}

variable "doks_registry_integration" {
  type        = bool
  default     = false
  description = "Enables or disables the DigitalOcean container registry integration for the cluster. This requires that a container registry has first been created for the account."
}

variable "doks_auto_scale" {
  type        = bool
  default     = false
  description = "Enable auto scale during maintenance window."
}

variable "doks_node_count" {
  default     = "3"
  description = "DigitalOcean Nodes in Cluster Pool"
}

variable "do_size" {
  default     = "s-2vcpu-4gb"
  description = "DigitalOcean Size Droplets/Nodes"
}

variable "doks_maintenance_policy" {
  default = {
    day        = "tuesday"
    start_time = "3:00"
  }
  description = "Define the window updates are to be applied when auto upgrade is set to true."
}
