output "ip_address" {
  description = <<-EOT
IP address of the instance.
The internal one is returned if it runs in the internal security group.
Otherwise, the external one is returned
EOT
  value       = var.internal_network ? aws_spot_instance_request.runner.*.private_ip : aws_spot_instance_request.runner.*.public_ip
}
