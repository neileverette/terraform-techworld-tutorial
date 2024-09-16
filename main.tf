provider "aws"{
    region = "us-east-1"
}

data "aws_instances" "all" {
  filter {
    name   = "instance-state-name"
    values = ["running"]
  }
}

output "ec2_instances" {
  value = data.aws_instances.all.ids
}

provider "digitalocean" {
  token = var.digitalocean_token
}

data "digitalocean_droplets" "all" {}

output "droplet_ids" {
  value = data.digitalocean_droplets.all.droplets[*].id
}

output "droplet_names" {
  value = data.digitalocean_droplets.all.droplets[*].name
}

/*
resource "digitalocean_droplet" "web" {
  image     = "ubuntu-22-04-x64" # Corrected to the latest Ubuntu LTS version
  name      = "web-1"
  region    = "nyc1"
  size      = "s-1vcpu-512mb-10gb"
  backups   = false
  ipv6      = true
  vpc_uuid  = var.vpc_uuid # New argument to specify the VPC
  ssh_keys = [var.ssh_fingerprint]
  tags      = ["web"]
}
*/
