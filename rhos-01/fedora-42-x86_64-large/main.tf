module "openstack" {
  source = "../_base"

  name      = "fedora-42-large"
  image_id  = "785f183e-78cc-436e-a2b6-c0882801f8e3"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
