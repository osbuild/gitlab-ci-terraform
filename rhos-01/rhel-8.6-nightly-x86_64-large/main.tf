module "openstack" {
  source = "../_base"

  name      = "rhel-8-6-nightly-large"
  image_id  = "c3ab9620-8d58-4af6-b8b6-44ee45514799"
  flavor_id = "c3ec7a0a-0443-4253-a6ab-040cc0278ced"
}

output "ip_address" {
  value = module.openstack.ip_address
}
