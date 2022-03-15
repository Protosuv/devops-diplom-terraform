terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.57"
    }
  }
  required_version = ">= 0.14.9"
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Alienorg"

    workspaces {
      name = "stage"
  }
}
}
