terraform {
  cloud {
    organization = "tfc-lab-mathis"
    workspaces {
      name = "lab5-continuous-validation"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "bad_bucket" {
  bucket = "lab5-policy-non-compliant-${random_id.suffix.hex}"
}
