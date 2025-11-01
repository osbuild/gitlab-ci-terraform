module "openstack" {
  source = "../_base"

  name      = "centos-stream-10"
  image_id  = "ba45c3cb-f1ee-4939-affb-cd4c9023839f"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
