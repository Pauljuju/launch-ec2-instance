# launch-ec2-instance
Simple CI/CD Project to Automatically Apply Terraform With AWS CodeBuild.

📌 Step-by-Step Setup Guide

1️⃣ Write Your Terraform Code
Create a simple main.tf file, for example:

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-codebuild-demo-bucket"
  acl    = "private"
}

2️⃣ Create buildspec.yml
This tells CodeBuild what to do. Add this to your root directory.

3️⃣ Create an S3 Bucket for CodeBuild Logs (Optional)

4️⃣ Create a CodeBuild Project
Go to the AWS CodeBuild console

Click "Create build project"

5️⃣ IAM Role Permissions
Attach these permissions to the CodeBuild role.

6️⃣ Push to GitHub
Once your repo has main.tf and buildspec.yml, push it to GitHub

7️⃣ Trigger a Build
Go to CodeBuild → your project → Start Build or enable webhook to auto-trigger on push.


        ✅ **What Happens**
CodeBuild installs Terraform

Initializes and validates your code

Plans the infrastructure changes

Applies the Terraform plan to AWS.
