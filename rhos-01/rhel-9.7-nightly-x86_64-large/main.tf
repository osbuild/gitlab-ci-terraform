module "openstack" {
  source = "../_base"

  name      = "rhel-9-7-nightly-large"
  image_id  = "3fa167fe-2512-4f95-b29f-15d6759cdffc"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
