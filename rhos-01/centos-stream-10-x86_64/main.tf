module "openstack" {
  source = "../_base"

  name      = "centos-stream-10"
  image_id  = "63b8ea94-509d-4cd4-9cef-64b4c9fe0820"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
