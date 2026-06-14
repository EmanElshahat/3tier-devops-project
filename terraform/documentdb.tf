resource "aws_docdb_subnet_group" "docdb_subnet_group" {

  name = "docdb-subnet-group"

  subnet_ids = module.vpc.private_subnets
}

resource "aws_docdb_cluster" "docdb" {

  cluster_identifier = "todo-docdb"

  engine = "docdb"

  master_username = "master"

  master_password = random_password.docdb_password.result

  db_subnet_group_name = aws_docdb_subnet_group.docdb_subnet_group.name

  vpc_security_group_ids = [
    aws_security_group.documentdb_sg.id
  ]

  skip_final_snapshot = true
}
