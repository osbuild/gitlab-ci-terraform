module "openstack" {
  source = "../_base"

  name      = "rhel-10-2-ga-large"
  image_id  = "78e1015a-f981-48cf-b6fe-2ee24e314cbc"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
