terraform {
  required_version = "~> 1.8.3"
  backend "pg" {}
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.38.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_api_token
}
