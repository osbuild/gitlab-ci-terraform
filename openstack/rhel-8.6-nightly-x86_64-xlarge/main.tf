module "openstack" {
  source = "../_base"

  name      = "rhel-8-6"
  image_id  = "40cd4980-64b2-47c8-9a9b-3287f0439ea9"
  flavor_id = "00e0b647-3e6b-4a47-b242-afd326af310b"
}

output "ip_address" {
  value = module.openstack.ip_address
}
