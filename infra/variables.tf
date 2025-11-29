variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "docker_image_url" {
  description = "ECR Docker image URL"
  type        = string
  default     = "195275668586.dkr.ecr.us-east-1.amazonaws.com/strapi-repo:latest"
}
