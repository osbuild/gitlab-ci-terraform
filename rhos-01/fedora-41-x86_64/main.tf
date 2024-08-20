module "openstack" {
  source = "../_base"

  name      = "fedora-41"
  image_id  = "3b9ecc9c-6aa0-4317-8a13-6978379346d1"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
