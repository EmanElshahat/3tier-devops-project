resource "aws_ecr_repository" "frontend" {
  name = "todo-frontend"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Project = "todo-app"
  }
}

resource "aws_ecr_repository" "backend" {
  name = "todo-backend"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Project = "todo-app"
  }
}
