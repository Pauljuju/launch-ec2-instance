#!/bin/bash

# fail on any error
set -eu

# go back to the previous directory
cd .. 

# initialize terraform
terraform init

# # apply terraform
#erraform apply -auto-approve

# destroy terraform
terraform destroy -auto-approve