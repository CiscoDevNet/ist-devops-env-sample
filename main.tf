module "loadbalancers" {
  source          = "./server"
  count           = var.vms["loadbalancer"].quantity
  template        = var.vms["loadbalancer"]
  server_name     = "${ var.vms["loadbalancer"].vmname}-sg-${count.index}"
  common_vm_specs = var.common_vm_specs
}

module "frontend" {
  source          = "./server"
  count           = var.vms["frontend"].quantity
  template        = var.vms["frontend"]
  server_name     = "${ var.vms["frontend"].vmname}-sg-${count.index}"
  common_vm_specs = var.common_vm_specs
}

module "backend" {
  source          = "./server"
  count           = var.vms["backend"].quantity
  template        = var.vms["backend"]
  server_name     = "${ var.vms["backend"].vmname}-sg-${count.index}"
  common_vm_specs = var.common_vm_specs
}