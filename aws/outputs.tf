output "bucket_name" {
  description = "Name of the S3 bucket created for remote state storage"
  value       = aws_s3_bucket.state.id
}

output "dynamodb_table" {
  description = "Name of the DynamoDB table used to lock state files"
  value       = aws_dynamodb_table.lock.name
}

output "kms_key_alias" {
  description = "Alias of the KMS key used for S3 and DynamoDB server-side encryption"
  value       = aws_kms_alias.this.name
}
