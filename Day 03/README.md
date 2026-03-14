# Day 3: Creating an AWS S3 Bucket & Understanding State Changes

## 📌 Overview
After configuring our AWS Provider in Day 2, Day 3 is all about provisioning actual cloud-native resources. Today, we moved beyond theory and used Terraform to create, modify, and destroy an Amazon S3 (Simple Storage Service) bucket. We also explored how Terraform detects changes to existing infrastructure.

## 🧠 Key Learnings

### Provisioning an S3 Bucket [00:03:48]
To create resources, you don't need to memorize every argument. The best practice is to rely on the official Terraform Registry documentation. 
* The resource block for an S3 bucket is `aws_s3_bucket`.
* **Important:** S3 bucket names must be **globally unique** across all of AWS, not just your account.

### Modifying Infrastructure & The State File [00:09:40]
One of Terraform’s core strengths is its ability to update existing resources without recreating them from scratch.
* When you change a configuration (e.g., updating a `tag` from "my bucket" to "my bucket 2.0"), running `terraform plan` compares your `.tf` file to the actual AWS environment via the **State File**.
* Terraform intelligently outputs: `0 to add, 1 to change, 0 to destroy`, meaning it will only patch the specific change rather than tearing down the whole bucket.

### Bypassing Manual Approvals [00:08:13]
By default, `terraform apply` and `terraform destroy` will pause and ask for a `yes` confirmation. You can bypass this (useful for CI/CD pipelines) by appending the `-auto-approve` flag:
* `terraform apply -auto-approve`

## ⚙️ Task Completed
- [x] Created a `main.tf` file and defined an `aws_s3_bucket` resource.
- [x] Utilized Terraform documentation to understand required vs. optional arguments.
- [x] Successfully applied the configuration to create an S3 bucket in AWS.
- [x] Modified resource tags to observe how Terraform detects state changes ("1 to change").
- [x] Ran `terraform destroy -auto-approve` to cleanly tear down the bucket.
