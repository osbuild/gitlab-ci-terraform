module "openstack" {
  source = "../_base"

  name      = "fedora-43"
  image_id  = "573973f2-a4cd-4ad7-b05d-a2cbe979a374"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
