terraform {
  backend "remote" {
    organization = "rm-lab"

    workspaces {
      name = "sample"
    }
  }
}

provider "vsphere" {
  user           = var.vsphere_username
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server

  # If you have a self-signed cert set this to TRUE
  allow_unverified_ssl = true
}