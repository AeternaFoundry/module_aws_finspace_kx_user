output "finspace_kx_users_id" {
  description = "Map of id values across all finspace_kx_users, keyed the same as var.finspace_kx_users"
  value       = { for k, v in aws_finspace_kx_user.finspace_kx_users : k => v.id if v.id != null && length(v.id) > 0 }
}
output "finspace_kx_users_arn" {
  description = "Map of arn values across all finspace_kx_users, keyed the same as var.finspace_kx_users"
  value       = { for k, v in aws_finspace_kx_user.finspace_kx_users : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "finspace_kx_users_environment_id" {
  description = "Map of environment_id values across all finspace_kx_users, keyed the same as var.finspace_kx_users"
  value       = { for k, v in aws_finspace_kx_user.finspace_kx_users : k => v.environment_id if v.environment_id != null && length(v.environment_id) > 0 }
}
output "finspace_kx_users_iam_role" {
  description = "Map of iam_role values across all finspace_kx_users, keyed the same as var.finspace_kx_users"
  value       = { for k, v in aws_finspace_kx_user.finspace_kx_users : k => v.iam_role if v.iam_role != null && length(v.iam_role) > 0 }
}
output "finspace_kx_users_name" {
  description = "Map of name values across all finspace_kx_users, keyed the same as var.finspace_kx_users"
  value       = { for k, v in aws_finspace_kx_user.finspace_kx_users : k => v.name if v.name != null && length(v.name) > 0 }
}
output "finspace_kx_users_region" {
  description = "Map of region values across all finspace_kx_users, keyed the same as var.finspace_kx_users"
  value       = { for k, v in aws_finspace_kx_user.finspace_kx_users : k => v.region if v.region != null && length(v.region) > 0 }
}
output "finspace_kx_users_tags" {
  description = "Map of tags values across all finspace_kx_users, keyed the same as var.finspace_kx_users"
  value       = { for k, v in aws_finspace_kx_user.finspace_kx_users : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "finspace_kx_users_tags_all" {
  description = "Map of tags_all values across all finspace_kx_users, keyed the same as var.finspace_kx_users"
  value       = { for k, v in aws_finspace_kx_user.finspace_kx_users : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

