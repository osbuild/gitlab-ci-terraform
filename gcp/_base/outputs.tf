output "ip_address" {
  description = "IP address of the instance"
  value       = [data.google_compute_instance.my_instance.network_interface.0.network_ip]
}
