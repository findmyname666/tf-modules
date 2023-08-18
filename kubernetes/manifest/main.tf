locals {
  // Spec cannot be set to null or {}.
  manifest = merge(
    {
      apiVersion = var.api_version
      kind       = var.kind
      metadata   = var.metadata
    },
    var.data != null ? { data = var.data } : {},
    var.spec != null ? { spec = var.spec } : {},
  )
}

resource "kubernetes_manifest" "this" {
  manifest = local.manifest
}
