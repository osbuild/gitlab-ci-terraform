module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "fae9f0e7-c5ad-4bec-becb-c7d36db2b075"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
