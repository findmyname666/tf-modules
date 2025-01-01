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

  dynamic "field_manager" {
    for_each = var.field_manager

    content {
      force_conflicts = field_manager.value.force_conflicts
      name            = field_manager.value.name
    }
  }
}
