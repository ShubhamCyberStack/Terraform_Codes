
# Azure Infrastructure Automation with Terraform

This repository demonstrates industry-standard practices for managing Azure cloud resources using **Terraform**. It focuses on modularity, environment separation (Dev vs. Prod), and conditional logic to optimize resource allocation and costs.

## 🚀 Key Features

  * **Environment-Specific Deployments:** Uses `.tfvars` files to manage separate configurations for `dev` and `prod` environments.
  * **Conditional Resource Logic:** \* **Dynamic Public IPs:** Implements `count` logic (`var.environment == "prod" ? 0 : 1`) to toggle Public IP attachments based on the environment.
      * **SKU Versioning:** Dynamically selects Ubuntu versions (e.g., 24.04 LTS for Prod vs. 22.04 LTS for Dev) using ternary operators.
  * **Structured File Organization:** Separates logic into `main.tf`, `variables.tf`, and `outputs.tf` for high maintainability.
  * **Comprehensive Documentation:** Includes a full `terraform_guide.pdf` for beginners to learn and practice Terraform from scratch.

-----

## 📂 Project Structure

```text
├── envs/
│   ├── dev.tfvars          # Development-specific configurations
│   └── production.tfvars   # Production-specific configurations
├── main.tf                 # Core logic (RG, VNet, Subnet, NIC, VM)
├── variables.tf            # Input variable definitions
├── outputs.tf              # Infrastructure output data
├── terraform.tfvars        # Default configuration values
└── terraform_guide.pdf     # Complete Terraform learning manual
```

-----

## 🛠️ Resources Provisioned

The Terraform code automates the deployment of the following Azure components:

1.  **Resource Group:** Logical container for all resources.
2.  **Virtual Network & Subnet:** Isolated networking environment.
3.  **Network Interface (NIC):** Connecting the VM to the subnet.
4.  **Public IP:** Provisioned conditionally (e.g., excluded in production for security).
5.  **Linux Virtual Machine:** Scalable compute instance with environment-aware SKU selection.

-----

## 💻 How to Use

### 1\. Initialize Terraform

First, initialize the backend and provider plugins:

```bash
terraform init
```

### 2\. Deployment Options

**To deploy using the default `terraform.tfvars`:**

```bash
terraform apply
```

**To deploy the Development environment:**

```bash
terraform apply -var-file="envs/dev.tfvars"
```

**To deploy the Production environment:**

```bash
terraform apply -var-file="envs/production.tfvars"
```

-----

## 📖 Learning Resources

If you are new to Terraform, please refer to the terraform_guide.pdf included in this repository. it covers everything from basic installation to advanced resource management.

-----

**Author:** [Shubham](https://www.google.com/search?q=https://github.com/ShubhamCyberStack)  
**Focus:** Cloud Technology & Information Security | DevOps | IaC
