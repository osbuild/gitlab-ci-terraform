module "openstack" {
  source = "../_base"

  name      = "rhel-8-7-nightly-large"
  image_id  = "27dd121f-1512-4c1d-bed5-a717c7d5c9e2"
  flavor_id = "c3ec7a0a-0443-4253-a6ab-040cc0278ced"
}

output "ip_address" {
  value = module.openstack.ip_address
}
