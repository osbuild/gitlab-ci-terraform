module "openstack" {
  source = "../_base"

  name      = "centos-stream-10"
  image_id  = "5d534fd1-fae9-4940-a1a1-41bc3207c088"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
