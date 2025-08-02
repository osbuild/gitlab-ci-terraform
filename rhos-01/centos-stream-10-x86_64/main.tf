module "openstack" {
  source = "../_base"

  name      = "centos-stream-10"
  image_id  = "5c4405aa-e744-4ba6-9ea4-d11413d990db"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
