terraform {
  cloud {
    organization = "tfc-lab-mathis"

    workspaces {
      name = "lab3-variables-oidc"
    }
  }

  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "demo" {
  bucket = "tfc-lab3-${random_id.suffix.hex}"

  tags = {
    Name = "tfc-lab3-oidc-demo"
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}

variable "region" {
  type    = string
  default = "eu-west-1"
}
