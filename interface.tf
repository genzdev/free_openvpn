variable "namespace" {
  type = string
}

variable "name" {
  type = string
}

variable "profile" {
  type = map(string)
}

variable "log_retention_days" {
  type = map(number)
}

variable "cloudwatch_retention_days" {
  type = map(number)
}

variable "log_transition_days" {
  type = map(number)
}

variable "server_region" {
  description = "Region to deploy server"
  type        = map(string)
}

variable "server_username" {
  description = "Admin Username to access server"
  type        = map(string)
}

variable "server_password" {
  description = "Admin Password to access server"
  type        = map(string)
}
