module "openstack" {
  source = "../_base"

  name      = "rhel-8-6"
  image_id  = "d4d51ef4-f79b-4a43-9b34-685c42db9b1c"
  flavor_id = "32a36607-c154-4c13-959b-3dbaffc642aa"
}

output "ip_address" {
  value = module.openstack.ip_address
}
