module "openstack" {
  source = "../_base"

  name      = "rhel-8-4-ga"
  image_id  = "d30f0336-745a-45b9-bc87-cf3489e42982"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
