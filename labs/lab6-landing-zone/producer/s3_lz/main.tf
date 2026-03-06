resource "aws_s3_bucket" "lz" {
  bucket = "${var.name}-${var.environment}"

  tags = {
    environment = var.environment
    owner       = "producer"
  }
}

resource "aws_s3_bucket_versioning" "lz" {
  bucket = aws_s3_bucket.lz.id

  versioning_configuration {
    status = var.enable_versioning ? "Enabled" : "Suspended"
  }
}
