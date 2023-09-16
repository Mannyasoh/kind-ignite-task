provider "kubectl" {
  config_context_cluster = "kind-kind"
}

resource "kubectl_manifest" "nodejs-deployment" {
  yaml_body = file("${path.module}/hello-world.yaml")
}

