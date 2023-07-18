module "openstack" {
  source = "../_base"

  name      = "fedora-38"
  image_id  = "0afed108-e9a8-4d09-8c65-786044a15dc2" #x86_64-Fedora-Cloud-Base-20230320.n.0
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
