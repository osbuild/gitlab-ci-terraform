module "openstack" {
  source = "../_base"

  name      = "fedora-43-large"
  image_id  = "838c6e72-f71d-4597-886b-352b3fc5610a"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
