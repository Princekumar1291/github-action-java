# outputs the public IP of EC2 instance
output "ec2_public_ip" {
  value       = aws_instance.web.public_ip
  description = "The public IP address of the EC2 instance"
}

# outputs the instance ID
output "ec2_instance_id" {
  value       = aws_instance.web.id
  description = "The ID of the EC2 instance"
}

# outputs the instance type
output "ec2_instance_type" {
  value       = aws_instance.web.instance_type
  description = "The type of the EC2 instance"
}

# outputs the Availability Zone
output "ec2_availability_zone" {
  value       = aws_instance.web.availability_zone
  description = "The Availability Zone of the EC2 instance"
}

# outputs the private IP of the instance
output "ec2_private_ip" {
  value       = aws_instance.web.private_ip
  description = "The private IP of the EC2 instance"
}
