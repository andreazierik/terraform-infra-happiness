output "public-ip" {
  value = module.ec2.public-ip
}

output "dns" {
  value = module.route53.dns-record
}

output "db_name" {
  value = {
    db      = module.rds.database,
    address = module.rds.endpoint,
    user    = module.rds.db-username,
  }
}