module "openstack" {
  source = "../_base"

  name      = "rhel-8-10-ga-large"
  image_id  = "8ee4f1bd-9a27-4112-8617-adad0732fff6"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
