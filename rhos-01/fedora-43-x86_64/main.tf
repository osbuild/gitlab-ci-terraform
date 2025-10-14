module "openstack" {
  source = "../_base"

  name      = "fedora-43"
  image_id  = "838c6e72-f71d-4597-886b-352b3fc5610a"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
