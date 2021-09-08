module "openstack" {
  source = "../_base"

  name      = "centos-stream-8"
  image_id  = "dc716096-b661-42e2-aefe-ec9700b87ed4"
  flavor_id = "893c20cf-d5ea-4c7d-9eee-2bc4b3e5723e"
}

output "ip_address" {
  value = module.openstack.ip_address
}
