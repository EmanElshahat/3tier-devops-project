output "vpc_id" {
  description = "VPC ID"

  value = module.vpc.vpc_id
}
output "cluster_name" {
  description = "EKS Cluster Name"

  value = module.eks.cluster_name
}
output "cluster_endpoint" {
  description = "EKS Cluster Endpoint"

  value = module.eks.cluster_endpoint
}
output "frontend_ecr_url" {
  description = "Frontend ECR Repository URL"

  value = aws_ecr_repository.frontend.repository_url
}
output "backend_ecr_url" {
  description = "Backend ECR Repository URL"

  value = aws_ecr_repository.backend.repository_url
}
output "documentdb_endpoint" {
  description = "DocumentDB Endpoint"

  value = aws_docdb_cluster.docdb.endpoint
}
output "documentdb_secret_arn" {
  description = "DocumentDB Secret ARN"

  value = aws_secretsmanager_secret.docdb_secret.arn
}

