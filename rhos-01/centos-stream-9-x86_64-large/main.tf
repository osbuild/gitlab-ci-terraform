module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "0641e458-40c3-4c20-b076-4f544c8b2026"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
