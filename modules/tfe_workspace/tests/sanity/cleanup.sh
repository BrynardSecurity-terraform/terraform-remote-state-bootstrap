#!/bin/bash
export TF_CLI_CONFIG_FILE=credentials.tfrc.json

terraform destroy -var-file=private.tfvars -auto-approve
rm terraform.tfstate terraform.tfstate.backup .terraform.lock.hcl
rm -rf .terraform
