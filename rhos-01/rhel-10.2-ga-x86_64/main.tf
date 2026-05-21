module "openstack" {
  source = "../_base"

  name      = "rhel-10-2-ga"
  image_id  = "78e1015a-f981-48cf-b6fe-2ee24e314cbc"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
