resource "kubernetes_service" "dbsvc" {
  metadata {
    name = var.mysql_service
  }
  spec {
     selector = {
       "run" = "${kubernetes_pod.pod1.metadata[0].labels.run}"
     }

     port {
       port = 3306
    }
    cluster_ip = "None"
  }
}


resource "kubernetes_service" "wpsvc" {
  metadata {
    name = var.wordpress_service
  }
  spec {
     selector = {
       "run" = "${kubernetes_pod.pod2.metadata[0].labels.run}"
     }

     port {
       port = 80
       node_port = var.wordpress_pod_port
    }
    type = "NodePort"
  }
}

