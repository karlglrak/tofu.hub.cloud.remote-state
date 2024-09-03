# cloud.remote-state/aws

This repository manages the infrastructure used to manage Terraform or Tofu's remote state.

As such, it is the only repository where a local state file should be checked into the repository.

## AWS

The infrastructure provisioned is:
- An S3 bucket
- A DynamoDB table

These are provisioned in the main organisation account.
