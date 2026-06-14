resource "random_password" "docdb_password" {
  length  = 16
  special = true
}

resource "aws_secretsmanager_secret" "docdb_secret" {
  name = "documentdb-master-password"
}

resource "aws_secretsmanager_secret_version" "docdb_secret_value" {
  secret_id = aws_secretsmanager_secret.docdb_secret.id

  secret_string = jsonencode({
    username = "master"
    password = random_password.docdb_password.result
  })
}
