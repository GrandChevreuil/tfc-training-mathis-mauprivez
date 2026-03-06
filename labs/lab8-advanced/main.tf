terraform {
  cloud {
    organization = "tfc-lab-mathis"
    workspaces {
      name = "lz-advanced"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "advanced" {
  bucket = "lz-advanced-${random_id.suffix.hex}"
}
