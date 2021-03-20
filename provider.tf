terraform {
  required_version = "~> 0.13"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 1.13"
    }
  }

  backend "local" {
    path = "/tmp/terraform.tfstate"
  }
  
}

provider "kubernetes" {
  host = "https://kubernetes.docker.internal:6443"
}
