# Day 1: Introduction to Infrastructure as Code (IaC) & Terraform

## 📌 Overview
Before writing any Terraform code, it's critical to understand the "Why" and "How" of Infrastructure as Code. This day covers the limitations of manual infrastructure provisioning and introduces Terraform as the ultimate solution.

## 🧠 Key Learnings

### What is Infrastructure as Code (IaC)?
IaC is the process of translating your infrastructure into code. Instead of clicking through a cloud console, you write scripts to provision resources like EC2 instances, VPCs, and S3 buckets.

### The Problem with Manual Provisioning 
If you manually create a basic 3-tier architecture (Web, App, DB), it might take 2 hours. 
* **Scaling Issue:** In an enterprise, an app might need 6 environments (Dev, QA, Staging, Prod, etc.), taking 12 hours total.
* **Challenges:** It causes human error, costs too much time, creates dependency bottlenecks, and leads to the classic *"it works on my machine"* problem due to inconsistent environments.

### Why Terraform?
While there are vendor-specific tools (like AWS CloudFormation or Azure ARM), Terraform is open-source and **cloud-agnostic**. You can use it across AWS, GCP, Azure, and more. 

### How Does Terraform Work?
1. **Code:** Engineers write `.tf` files using HashiCorp Configuration Language (HCL), which is similar to JSON but highly readable.
2. **Version Control:** Code is pushed to GitHub to track changes.
3. **Execution:** Terraform core takes the code and makes API calls to the Cloud Provider (AWS) to provision, modify, or delete resources.

### 🛠️ Core Terraform Commands
* `terraform init`: It initializes the working directory or say terraform file by downloading required provider plugins and setting ups a backend configurations.
* `terraform validate`: Checks the syntax for any linting errors.
* `terraform plan`: A dry run that shows what changes will be made before actually applying them.
* `terraform apply`: Executes the changes and provisions the infrastructure via AWS APIs.
* `terraform destroy`: Tears down the infrastructure to save costs when no longer needed.

## ⚙️ Task Completed
- [x] Installed Terraform using Homebrew (`brew install hashicorp/tap/terraform`).
- [x] Installed HashiCorp Terraform extension in VS Code.
- [x] Published Medium Blog.
