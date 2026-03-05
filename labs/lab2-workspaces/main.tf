terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

terraform { 
  cloud { 
    
    organization = "tfc-lab-mathis" 

    workspaces { 
      name = "lab2-workspaces" 
    } 
  } 
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "tfc-lab2-${random_id.suffix.hex}"
  tags = {
    Name = "tfc-lab2-mathis"
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}


