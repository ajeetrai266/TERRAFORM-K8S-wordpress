resource "kubernetes_pod" "pod1" {
  depends_on = [
    kubernetes_secret.s1
  ]

  metadata {
    name = var.mysql_pod
    labels = {
       "run" = "mysql"
    }
  }

  spec {
         container {
          image = "mysql:5.7"
          name  = "mysql-c1"

         env { 
          name  = "MYSQL_ROOT_PASSWORD"
          value_from {
             secret_key_ref {
                name = var.secret
                key = "r"
             }
          }
      }

         env {
          name  = "MYSQL_USER"
          value_from {
             secret_key_ref {
                name = var.secret
                key = "u"
             }
          }
      }

         env {
          name  = "MYSQL_PASSWORD"
          value_from {
             secret_key_ref {
                name = var.secret
                key = "p"
             }
          }
      }

         env {
          name  = "MYSQL_DATABASE"
          value_from {
             secret_key_ref {
                name = var.secret
                key = "d"
             }
          }
      }
   }
  }
}