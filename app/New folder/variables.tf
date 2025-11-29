variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "docker_image_url" {
  description = "ECR Docker image URL for Strapi"
  type        = string
}
