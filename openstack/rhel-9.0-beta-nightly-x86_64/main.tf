module "openstack" {
  source = "../_base"

  name     = "rhel-9-0-beta-nightly"
  image_id = "c332bd07-2b10-4de9-9090-736e904d09a8"
}

output "ip_address" {
  value = module.openstack.ip_address
}
