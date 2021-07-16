resource "kubernetes_secret" "s1" {
  metadata {
    name = var.secret
  }

  data = {
    r = "ZGltcHUxMjM0NQ=="
    p = "YWplZXQxMjM0NQ=="
    u = "YWplZXQ="
    d = "d29yZHByZXNzX2Ri"
  }
}