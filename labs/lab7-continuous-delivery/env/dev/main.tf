terraform {
  cloud {
    organization = "tfc-lab-mathis"

    workspaces {
      name = "lz-dev-cd"
    }
  }

  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "eu-west-1"
}

module "lz_s3" {
  source  = "app.terraform.io/tfc-lab-mathis/s3_lz/aws"
  version = "1.0.0"

  name        = "lz-lab7-mathis-bucket"
  environment = "dev"
}
