module "openstack" {
  source = "../_base"

  name      = "centos-stream-10"
  image_id  = "1a7b6114-5ed0-448f-90fa-ef5fc263b968"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
