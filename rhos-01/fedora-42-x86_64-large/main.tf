module "openstack" {
  source = "../_base"

  name      = "fedora-42-large"
  image_id  = "dd640070-e986-400e-a67e-0e599c300718"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
