terraform {
  required_version = "~> 1.8.3"
  backend "pg" {
    conn_str = "postgres://tourissmo-staging-db-do-user-16672132-0.c.db.ondigitalocean.com:25060/terraform"
  }
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
