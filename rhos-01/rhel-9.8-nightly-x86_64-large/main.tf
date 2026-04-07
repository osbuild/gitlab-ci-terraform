module "openstack" {
  source = "../_base"

  name      = "rhel-9-8-nightly-large"
  image_id  = "dee83223-f083-49f1-acdb-5304af756215"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
