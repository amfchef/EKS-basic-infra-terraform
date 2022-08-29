output "cluster_id" {
  description = "EKS cluster ID"
  value       = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.eks.cluster_security_group_id
}

output "region" {
  description = "AWS region"
  value       = var.region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = local.cluster_name
}
# data.aws_availability_zones.available.names, 0, 3
output "az" {
  description = "aws_availability_zones.available.names"
  value       = data.aws_availability_zones.available.names
}
# Prints out 
/*
output "lb_ip" {
  value = kubernetes_service.nginx.status.0.load_balancer.0.ingress.0.hostname
} 
*/
output "cluster_info_id" {
  value = data.terraform_remote_state.eks.outputs.cluster_id
}