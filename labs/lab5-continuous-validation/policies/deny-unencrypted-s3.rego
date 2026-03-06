package tfplan

deny contains msg if {
  resource := input.resource_changes[_]
  resource.type == "aws_s3_bucket"

  not resource.change.after.server_side_encryption_configuration

  msg := sprintf("S3 bucket '%s' must enable encryption", [resource.address])
}
