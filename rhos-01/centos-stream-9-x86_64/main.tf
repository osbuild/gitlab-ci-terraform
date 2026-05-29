module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "ea65c822-b483-436b-9d86-67f58327918f"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
