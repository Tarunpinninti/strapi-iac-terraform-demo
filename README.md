# Strapi Headless CMS Deployment using Terraform & AWS ECS Fargate 

# IaC Assignment – Full Deployment on AWS

This project demonstrates deploying a Strapi Headless CMS on AWS using Infrastructure as Code (IaC) with Terraform.
The deployment includes AWS ECS Fargate, ECR, ALB, CloudWatch, IAM roles, and VPC networking.

# Project Structure

    strapi-iac-terraform-demo/
    │
    ├── app/               # Strapi application source code
    ├── infra/             # Terraform IaC code
    │   ├── main.tf
    │   ├── variables.tf
    │   ├── outputs.tf
    │
    └── README.md          # Assignment documentation

# Live Cloud-Deployed API Endpoint

http://strapi-alb-1109205328.us-east-1.elb.amazonaws.com/api/products
# Terraform IaC Deployment Flow
*Step 1 — Initialize Terraform

    terraform init

 *Step 2 — Deploy infrastructure

    terraform apply --auto-approve

This creates:

    ECS Cluster

    ECS Service

    Task Definition

    Application Load Balancer

    Target Group

    IAM roles

    CloudWatch Log Group

    ECR Repository

# Build & Push Docker Image to ECR

Login to ECR:

    aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 195275668586.dkr.ecr.us-east-1.amazonaws.com

# Build image:

	 docker build -t strapi-app .

# Tag & push:

	  docker tag strapi-app:latest 195275668586.dkr.ecr.us-east-1.amazonaws.com/strapi-repo:latest

    docker push 195275668586.dkr.ecr.us-east-1.amazonaws.com/strapi-repo:latest

# Strapi Permissions Update

To make /api/products public:

Path inside Strapi Admin:

    Settings → Users & Permissions Plugin → Roles → Public

Enable:

   find
   findOne
Then click Save.

# Outputs from Terraform
    alb_dns_name = "strapi-alb-1109205328.us-east-1.elb.amazonaws.com"
    ecr_repository_url = "195275668586.dkr.ecr.us-east-1.amazonaws.com/strapi-repo"
    ecs_cluster_name = "strapi-cluster-terraform"




