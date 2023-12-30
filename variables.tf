variable "prefix" {
  type        = string
  description = "This prefix will be included in the name of most resources."
}

variable "region" {
  type        = string
  description = "The region where the resources are created."
}

variable "env" {
  type        = string
  description = "Value for the environment tag."
}

variable "department" {
  type        = string
  description = "Value for the department tag."
  default     = "WebDev"
}

variable "expired_version_retention_days" {
  type        = number
  description = "Number of days to retain expired versions."
  default = 1
  validation {
    condition     = var.expired_version_retention_days > 0 && var.expired_version_retention_days <= 365
    error_message = "Please choose a value between 1 and 365 days."
  }
}
