# tfenv use 1.4.6
#
terraform {
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">=1.7.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.12.1"
    }
  }
}
#
provider "kubernetes" {
  config_path = "../credentials/kube-config"
}
#
provider "kubectl" {
  config_path = "../credentials/kube-config"
}