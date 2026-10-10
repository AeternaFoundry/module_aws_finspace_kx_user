variable "finspace_kx_users" {
  description = <<EOT
Map of finspace_kx_users, attributes below
Required:
    - environment_id
    - iam_role
    - name
Optional:
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    environment_id = string
    iam_role       = string
    name           = string
    region         = optional(string)
    tags           = optional(map(string))
    tags_all       = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.finspace_kx_users : (
        length(v.environment_id) >= 1 && length(v.environment_id) <= 32
      )
    ])
    error_message = "must be between 1 and 32 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

