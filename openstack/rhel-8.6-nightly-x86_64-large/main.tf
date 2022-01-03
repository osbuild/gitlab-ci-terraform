module "openstack" {
  source = "../_base"

  name      = "rhel-8-6-nightly-large"
  image_id  = "c3ab9620-8d58-4af6-b8b6-44ee45514799"
  flavor_id = "32a36607-c154-4c13-959b-3dbaffc642aa"
}

output "ip_address" {
  value = module.openstack.ip_address
}
