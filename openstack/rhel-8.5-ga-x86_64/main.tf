module "openstack" {
  source = "../_base"

  name      = "rhel-8-5-ga"
  image_id  = "d4c90096-6931-418b-8651-453a07b82f16"
  flavor_id = "893c20cf-d5ea-4c7d-9eee-2bc4b3e5723e"
}

output "ip_address" {
  value = module.openstack.ip_address
}
