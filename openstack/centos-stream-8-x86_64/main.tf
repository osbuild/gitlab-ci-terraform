module "openstack" {
  source = "../_base"

  name     = "centos-stream-8"
  image_id = "dc716096-b661-42e2-aefe-ec9700b87ed4"
}

output "ip_address" {
  value = module.openstack.ip_address
}
