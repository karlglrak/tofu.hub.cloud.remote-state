# cloud.remote-state/aws

This repository manages the infrastructure used to manage Terraform or Tofu's remote state.

As such, it is the only repository where a local state file should be checked into the repository.

## AWS

The infrastructure provisioned is:
- An S3 bucket
- A DynamoDB table

These are provisioned in the main organisation account.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | = 1.7.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.60.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.60.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_org_prefix"></a> [org\_prefix](#input\_org\_prefix) | A short prefix to be applied to managed resources to allow uniqueness | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | Name of the S3 bucket created for remote state storage |
| <a name="output_dynamodb_table"></a> [dynamodb\_table](#output\_dynamodb\_table) | Name of the DynamoDB table used to lock state files |
| <a name="output_kms_key_alias"></a> [kms\_key\_alias](#output\_kms\_key\_alias) | Alias of the KMS key used for S3 and DynamoDB server-side encryption |