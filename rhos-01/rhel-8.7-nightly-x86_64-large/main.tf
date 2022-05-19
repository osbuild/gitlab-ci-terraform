module "openstack" {
  source = "../_base"

  name      = "rhel-8-7-nightly-large"
  image_id  = "82e74f2b-edc4-4226-a42d-49f0a8eb70c6"
  flavor_id = "c3ec7a0a-0443-4253-a6ab-040cc0278ced"
}

output "ip_address" {
  value = module.openstack.ip_address
}
