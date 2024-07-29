locals {
  bucket_name       = "${var.org_prefix}-tf-remote-state"
  dynamo_table_name = "${var.org_prefix}TFRemoteState"

  dynamo_hash_key = "LockID"

  tags = {
    Component   = "Terraform"
    Environment = "organisation"
  }
}
