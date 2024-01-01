terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>4.0"
    }
  }
}

provider "registry.terraform.io/hashicorp/aws" {
  version = "2.7.0"
}