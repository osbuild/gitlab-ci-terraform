module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "216e9d8e-71f7-4979-a903-396dc37a043b"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
