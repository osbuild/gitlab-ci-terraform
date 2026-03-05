module "openstack" {
  source = "../_base"

  name      = "rhel-9-7-ga"
  image_id  = "9a91be35-de5b-49b3-9b5d-e4118114e141"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
