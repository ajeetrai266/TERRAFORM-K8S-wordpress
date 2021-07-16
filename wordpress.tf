resource "kubernetes_pod" "pod2" {
  depends_on = [
    kubernetes_pod.pod1
  ]

  metadata {
    name = var.wordpress_pod
    labels = {
      "run" = "wordpress"
    }
  }

  spec {
       container {
        image = "wordpress:5.1.1-php7.3-apache"
        name = "wp-c1"

        env {
          name = "WORDPRESS_DB_HOST"
          value = "${kubernetes_service.dbsvc.metadata[0].name}"
        }

        env {
          name = "WORDPRESS_DB_USER"
          value_from {
             secret_key_ref {
                name = var.secret
                key = "u"
             }
          }
        }

        env {
          name = "WORDPRESS_DB_PASSWORD"
          value_from {
             secret_key_ref {
                name = "dbsecret"
                key = "p"
             }
          }
        }

        env {
          name = "WORDPRESS_DB_NAME"
          value_from {
             secret_key_ref {
                name = "dbsecret"
                key = "d"
             }
          }
        }

       }
        
  }

}
