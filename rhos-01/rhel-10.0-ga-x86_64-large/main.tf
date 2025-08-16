module "openstack" {
  source = "../_base"

  name      = "rhel-10-0-ga-large"
  image_id  = "5cdf9582-5923-4634-a8a5-6d9797599cdf"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
