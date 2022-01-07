output "ip_address" {
  value = openstack_compute_instance_v2.runner.*.access_ip_v4
}
