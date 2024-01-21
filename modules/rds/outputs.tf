output "database" {
  value = aws_db_instance.db_instance.db_name
}

output "endpoint" {
  value = aws_db_instance.db_instance.endpoint
}

output "db-username" {
  value = aws_db_instance.db_instance.username
}