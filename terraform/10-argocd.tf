# # Creates a namespace for ArgoCD
# resource "kubernetes_namespace" "namespace" {
#   metadata {
#     name = var.namespace
#   }
#   depends_on = [digitalocean_kubernetes_cluster.k8s]
# }

# # Dploys ArgoCD
# resource "helm_release" "argocd" {
#   name       = var.release_name
#   repository = var.helm_repository
#   chart      = var.chart_name
#   namespace  = var.namespace
#   depends_on = [kubernetes_namespace.namespace]
# }