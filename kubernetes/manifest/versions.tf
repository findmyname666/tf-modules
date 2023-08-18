terraform {
  required_version = ">= 1.4.0"

  required_providers {
    kubernetes = {
      source  = "kubernets"
      version = ">= 2.20.0"
    }
  }
}
