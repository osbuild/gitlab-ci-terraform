module "openstack" {
  source = "../_base"

  name      = "rhel-8-5-ga"
  image_id  = "a99c9aa6-7a24-4c58-bded-92c4dc4e998a"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
