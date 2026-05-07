resource "aws_ecr_repository" "meu_website" {
  name                 = "meu-website"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "meu-website"
  }
}

output "ecr_url" {
  description = "URL do repositorio ECR"
  value       = aws_ecr_repository.meu_website.repository_url
}
