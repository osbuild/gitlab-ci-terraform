module "openstack" {
  source = "../_base"

  name      = "rhel-8-7-nightly"
  image_id  = "27dd121f-1512-4c1d-bed5-a717c7d5c9e2"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
