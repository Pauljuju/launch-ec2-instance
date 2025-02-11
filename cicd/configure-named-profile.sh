#!/bin/bash

# fail on any error
set -eu

# configure named profile
aws configure set aws_access_key_id ${AWS_ACCESS_KEY_ID:-default_value} --profile $PROFILE_NAME 
aws configure set aws_secret_access_key ${AWS_SECRET_ACCESS_KEY:-default_value} --profile $PROFILE_NAME 
aws configure set region ${AWS_REGION:-default_value} --profile $PROFILE_NAME

# verify that profile is configured
aws configure list --profile ${PROFILE_NAME:-default_value}