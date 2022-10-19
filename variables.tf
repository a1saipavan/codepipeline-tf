variable "env" {
  description = "Depolyment environment"
  default     = "dev"
}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "repository_branch" {
  description = "Repository branch to connect to"
  default     = "main"
}

variable "repository_owner" {
  description = "GitHub repository owner"
  default     = "a1saipavan"
}

variable "repository_name" {
  description = "GitHub repository name"
  default     = "nodejs-demo"
}

variable "sample_web_bucket_name" {
  description = "S3 Bucket to deploy to"
  default     = "sample-web-example-bucket"
}

variable "artifacts_sample_name" {
  description = "S3 Bucket for storing artifacts"
  default     = "sample-web-example-artifacts"
}

#variable "github_token" {
#}

output "web_public_url" {
  value = aws_s3_bucket.sample_web_bucket.website_endpoint
}
