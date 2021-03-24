module "openstack" {
  source = "../_base"

  name     = "fedora-33"
  image_id = "1be1818c-4c0d-439d-945d-e3610dddfc82"
}

output "ip_address" {
  value = module.openstack.ip_address
}
