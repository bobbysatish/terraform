output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "key_name" {
  description = "List of key names of instance"
  value       = aws_instance.app_key_name
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "instance_private_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.private_ip
}

output "public_dns" {
  description = "List of public DNS name assigned to the instance"
  value       = aws_instance.app_server.public_dns
}

output "private_dns" {
  description = "List of private DNS name assigned to the instance"
  value       = aws_instance.app_server.private_dns
}

output "network_interface_id" {
  description = "List of Ids of the network interface of instance"
  value       = aws_instance.app_server.network_interface_id
}

output "primary_network_interface_id" {
  description = "List of Ids of the primary network interface of instance"
  value       = aws_instance.app_server.primary_network_interface_id
}

output "security_groups" {
  description = "List of associated security groups of instance"
  value       = aws_instance.app_server.security_groups
}

output "vpc_security_groups_ids" {
  description = "List of associated vpc security groups ids of instance"
  value       = aws_instance.app_server.vpc_security_groups_ids
}
