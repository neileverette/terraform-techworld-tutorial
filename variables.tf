variable "digitalocean_token" {
  description = "The token for accessing DigitalOcean API"
  type        = string
}

variable "ssh_fingerprint" {
  description = "The SSH fingerprint for the key to access the droplet"
  type        = string
}

variable "vpc_uuid" {
  description = "The UUID of the VPC where the Droplet will be created"
  type        = string
}