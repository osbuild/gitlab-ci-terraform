module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "9f49b07d-57e2-4998-a8e3-6d13457fde85"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
