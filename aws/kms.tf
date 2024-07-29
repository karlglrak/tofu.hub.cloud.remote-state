resource "aws_kms_key" "this" {
  description             = "Key used to encrypt terraform remote state."
  deletion_window_in_days = 7
  enable_key_rotation     = true

  tags = local.tags
}

resource "aws_kms_alias" "this" {
  name          = "alias/tf-remote-state-key"
  target_key_id = aws_kms_key.this.key_id
}
