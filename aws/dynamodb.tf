resource "aws_dynamodb_table" "lock" {
  name         = local.dynamo_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = local.dynamo_hash_key

  attribute {
    name = local.dynamo_hash_key
    type = "S"
  }

  server_side_encryption {
    enabled     = true
    kms_key_arn = aws_kms_key.this.arn
  }

  point_in_time_recovery {
    enabled = true
  }

  tags = merge(
    local.tags,
    {
      Name = local.dynamo_table_name
    }
  )
}
