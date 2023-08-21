variable "api_version" {
  description = "The API version of the Kubernetes resource."
  type        = string
}

variable "kind" {
  description = "The type of Kubernetes resource to create."
  type        = string
}

variable "data" {
  description = "Additional data to be configured for the Kubernetes manifest."
  type        = any
  default     = null
}

variable "metadata" {
  description = "Metadata for the Kubernetes resource."
  type        = any
  default     = null
}

# Map elements must have the same type in Terraform.
# We need to support here highly dynamic data.
variable "spec" {
  type    = any
  default = null
}
