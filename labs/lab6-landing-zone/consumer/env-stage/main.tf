terraform {
  cloud {
    organization = "tfc-lab-mathis"
    workspaces {
      name = "lz-stage"   # ajuster selon env
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

module "lz_s3" {
  source  = "app.terraform.io/tfc-lab-mathis/s3_lz/aws"
  version = "1.0.0"

  name        = "landing-zone-bucket"
  environment = "stage"
}
