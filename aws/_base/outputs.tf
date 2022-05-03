output "ip_address" {
  description = <<-EOT
IP address of the instance.
The internal one is returned if it runs in the internal security group.
Otherwise, the external one is returned
EOT
  value       = [var.internal_network ? data.aws_instance.runner.private_ip : data.aws_instance.runner.public_ip]
}
