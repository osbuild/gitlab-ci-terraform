module "openstack" {
  source = "../_base"

  name     = "rhel-9-0-beta-nightly"
  image_id = "43a68379-5468-490d-a51a-141ce33f9165"
}

output "ip_address" {
  value = module.openstack.ip_address
}
