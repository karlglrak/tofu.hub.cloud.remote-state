# cloud.remote-state/aws

This repository manages the infrastructure used to manage Terraform or Tofu's remote state.

Running this repository will generate a local `.tfstate` file. Consideration should be given as to where this should be stored for future usage. 

## AWS

The infrastructure provisioned is:
- An S3 bucket
- A DynamoDB table

These are provisioned in the main organisation account.
