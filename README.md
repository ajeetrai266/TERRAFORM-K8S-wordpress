# TERRAFORM-K8S-wordpress
This Repository used to deploy a WordPress site and a MySQL database in K8s Cluster (Minikube),\
using *Terraform*

**WordPress**, it is the simplest, most popular way to create your own website or blog.\
**MySQL**, free and open source widely used relational database management system (RDBMS).\
**Minikube** is local Single-Node Kubernetes Cluster, focusing on making it easy to learn and develop for Kubernetes.

***provider.tf*** : connect the Minikube\
***secret.tf*** : create the Secret for MySQL database in K8s\
***mysql.tf*** : create Pod for MySQL\
***wordpress.tf*** : create Pod for Wordpress App\
***svc.tf*** : create Service's for MySQL and Wordpress Pods\
***output.tf*** : store variable's.
