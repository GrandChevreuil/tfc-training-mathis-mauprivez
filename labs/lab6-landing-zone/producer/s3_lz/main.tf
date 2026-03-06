resource "aws_s3_bucket" "lz" {
  bucket = "${var.name}-${var.environment}"

  tags = {
    environment = var.environment
    owner       = "producer"
  }
}
