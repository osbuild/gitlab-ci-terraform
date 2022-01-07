module "openstack" {
  source = "../_base"

  name      = "rhel-8-6-nightly"
  image_id  = "c3ab9620-8d58-4af6-b8b6-44ee45514799"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
