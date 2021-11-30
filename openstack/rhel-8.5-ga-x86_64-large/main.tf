module "openstack" {
  source = "../_base"

  name      = "rhel-8-5-ga-large"
  image_id  = "d4c90096-6931-418b-8651-453a07b82f16"
  flavor_id = "4b04b7c3-ec50-469f-9c07-c41f0bff4972"
}

output "ip_address" {
  value = module.openstack.ip_address
}
