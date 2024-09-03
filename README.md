# kgstf.cloud.remote-state

Manages a remote state for Terraform/Opentofu.

This repository is intended to be used _before_ any other "kgstf" repository. As it is the repository which sets up and configures the infrastructure for the backend, it has no backend _itself_ and, therefore, the state file is written locally.

Implementations using this repository, then, should consider how this state file is managed. Files named `*.tfstate*` are ignored by the git filters in this repository, as they should not be committed here.

## Terraform Compatibility

Please note that this repository has been tested with OpenTofu only.

Due to OpenTofu's compatibility promises, it is likely that compatibility with Terraform will be maintained however usage may require some changes e.g. `versions.tf` may need the Terraform version changed.
