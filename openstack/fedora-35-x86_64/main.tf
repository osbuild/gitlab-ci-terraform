module "openstack" {
  source = "../_base"

  name      = "fedora-35"
  image_id  = "824cb481-b716-46dd-b772-9f7fa4107eda"
  flavor_id = "893c20cf-d5ea-4c7d-9eee-2bc4b3e5723e"
}

output "ip_address" {
  value = module.openstack.ip_address
}
