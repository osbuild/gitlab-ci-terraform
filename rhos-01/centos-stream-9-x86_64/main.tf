module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "c35b1574-444c-43e9-93c2-9aea0e1ab179"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
