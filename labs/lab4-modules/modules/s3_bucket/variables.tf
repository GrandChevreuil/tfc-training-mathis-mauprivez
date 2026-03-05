variable "bucket_prefix" {
  type        = string
  description = "Préfixe du nom du bucket"
}

variable "tags" {
  type        = map(string)
  description = "Tags appliqués au bucket"
  default     = {}
}
