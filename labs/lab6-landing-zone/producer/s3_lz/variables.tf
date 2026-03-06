variable "name" {
  type        = string
  description = "Nom du bucket"
}

variable "environment" {
  type        = string
  description = "Environnement (dev, stage, prod)"
}

variable "enable_versioning" {
  type        = bool
  description = "Activer le versioning S3"
  default     = false
}
