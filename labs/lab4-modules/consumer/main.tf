terraform {
  cloud {
    organization = "tfc-lab-mathis"
    workspaces {
      name = "lab4-modules"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

module "s3-bucket" {
  source  = "app.terraform.io/tfc-lab-mathis/s3-bucket/aws"
  version = "0.2.0"
  

  bucket_prefix     = "lab4-module"
  enable_versioning = true

  tags = {
    Environment = "lab4"
    Owner       = "student"
  }
}

output "bucket_name" {
  value = module.s3-bucket.bucket_name
}
