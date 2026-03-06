terraform {
  cloud {
    organization = "tfc-lab-mathis"
    workspaces {
      name = "lz-prod"   # ajuster selon env
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

module "lz_s3" {
  source  = "app.terraform.io/tfc-lab-mathis/s3_lz/aws"
  version = "1.1.0"

  name        = "lz-bucket-tfc-mathis"
  environment = "prod"
  enable_versioning = true
}
