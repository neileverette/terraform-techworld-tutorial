terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.60.0"
    }
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.39.2"
    }
  }

}