terraform {
  cloud {
    organization = "mgamini"
    workspaces {
      name = "minikube-test"
    }
  }
}

provider "kubernetes" {
  host = "https://kubernetes.docker.internal:${data.external.minikube_port.result.port}"
  client_certificate = file("/home/tfc-agent/.minikube/profiles/minikube/client.crt")
  client_key = file("/home/tfc-agent/.minikube/profiles/minikube/client.key")
  cluster_ca_certificate = file("/home/tfc-agent/.minikube/ca.crt")
}

# Get the Minikube API port
data "external" "minikube_port" {
  program = ["sh", "-c", "kubectl config view -o jsonpath='{\"port\": \"{.clusters[?(@.name == \\\"minikube\\\")].cluster.server}\"}'"]
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