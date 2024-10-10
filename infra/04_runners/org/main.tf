#
resource "kubectl_manifest" "cluster" {
  #
  for_each = var.repository
  #
  yaml_body = templatefile("${path.module}/manifests/runner_deployment.yaml", {
    repository_name = lookup(each.value, "repository_name", null)
    owner           = lookup(each.value, "owner", null)
    namespace       = lookup(each.value, "namespace", "actions-runner-system")
    label           = lookup(each.value, "namespace", "sefl-host-org")
  })
}