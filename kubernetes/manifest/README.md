# Terraform Kubernetes Manifest

This Terraform module allows you to dynamically generate Kubernetes
manifests by providing the necessary attributes and specifications
as input variables.


<!-- BEGIN_TF_DOCS -->

## Providers

| Name | Version |
|------|---------|
| kubernetes | >= 2.20.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| api_version | The API version of the Kubernetes resource. | `string` | n/a | yes |
| data | Additional data to be configured for the Kubernetes manifest. | `any` | `null` | no |
| field_manager | Configure field manager options. | ```list(object({ force_conflicts = bool, name = optional(string, null), }))``` | `[]` | no |
| kind | The type of Kubernetes resource to create. | `string` | n/a | yes |
| metadata | Metadata for the Kubernetes resource. | `any` | `null` | no |
| spec | Map elements must have the same type in Terraform. We need to support here highly dynamic data. | `any` | `null` | no |

<!-- END_TF_DOCS -->
