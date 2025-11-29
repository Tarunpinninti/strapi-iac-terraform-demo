output "alb_dns_name" {
  value = aws_lb.strapi_alb.dns_name
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.strapi.name
}

output "ecr_repository_url" {
  value = aws_ecr_repository.strapi.repository_url
}
