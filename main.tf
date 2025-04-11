terraform {
  cloud {
    organization = "mgamini"
    workspaces {
      name = "minikube-test"
    }
  }
}

provider "kubernetes" {
  host = "https://192.168.49.2:8443"
  insecure = true
  client_certificate     = "/home/tfc-agent/.minikube/profiles/minikube/client.crt"
  client_key            = "/home/tfc-agent/.minikube/profiles/minikube/client.key"
}

resource "kubernetes_deployment" "nginx" {
  metadata {
    name = "nginx-deployment"
    labels = {
      app = "nginx"
    }
  }
  spec {
    replicas = 2
    selector {
      match_labels = {
        app = "nginx"
      }
    }
    template {
      metadata {
        labels = {
          app = "nginx"
        }
      }
      spec {
        container {
          image = "nginx:latest"
          name  = "nginx"
          port {
            container_port = 80
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "nginx" {
  metadata {
    name = "nginx-service"
  }
  spec {
    selector = {
      app = "nginx"
    }
    port {
      port        = 80
      target_port = 80
    }
    type = "ClusterIP"
  }
}