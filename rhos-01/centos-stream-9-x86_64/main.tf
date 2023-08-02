module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "9ed77013-a516-46b4-b9a8-1ccae9043f58"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
