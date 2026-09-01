module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "f0a7cdf9-d3be-49b4-979f-eda5c8a1eb9c"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
