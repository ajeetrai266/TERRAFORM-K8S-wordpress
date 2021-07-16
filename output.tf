output "URL_wordpress_app" {
  value = "http://192.168.99.100:${kubernetes_service.wpsvc.spec[0].port[0].node_port}"
}
# 192.168.99.100 <- Host (Minikube) IP Address

variable "mysql_pod" {
  default = "mysql-pod"
}

variable "mysql_service" {
  default = "mysql-svc"
}

variable "wordpress_pod" {
  default = "wordpress-pod"
}

variable "wordpress_service" {
  default = "wordpress-svc"
}

variable "secret" {
  default = "dbsecret"
}

variable "wordpress_pod_port" {
  type = number
  default = 30002
}