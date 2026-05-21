# 🏗️ Terraform Mongo Infrastructure

> Infrastructure as Code (IaC) project using Terraform for automated MongoDB environment provisioning and deployment workflow experimentation.

[![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?logo=terraform)](https://terraform.io)
[![MongoDB](https://img.shields.io/badge/MongoDB-Database-47A248?logo=mongodb)](https://mongodb.com)
[![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-CI%2FCD-2088FF?logo=github-actions)](https://github.com/features/actions)
[![IaC](https://img.shields.io/badge/Infrastructure-as_Code-orange)](https://en.wikipedia.org/wiki/Infrastructure_as_code)

---

## Overview

This project automates MongoDB infrastructure provisioning using Terraform, enabling reproducible, version-controlled environments. It's designed for experimenting with IaC patterns, deployment workflows, and CI/CD integration via GitHub Actions.

---

## Features

- Automated MongoDB infrastructure provisioning
- Reusable, version-controlled Terraform configurations
- Reproducible environment setup across machines
- GitHub Actions CI workflow integration
- Infrastructure deployment experimentation

---

## Tech Stack

| Layer | Technology |
|---|---|
| IaC Tool | Terraform |
| Database | MongoDB |
| CI/CD | GitHub Actions |
| Paradigm | Infrastructure as Code |

---

## Project Structure

```
terraform-mongo/
├── .github/
│   └── workflows/
│       └── terraform.yml       # GitHub Actions CI pipeline
├── .terraform/
│   └── providers/              # Downloaded provider plugins
├── .terraform.lock.hcl         # Provider version lock file
├── main.tf                     # Core Terraform configuration
├── terraform.tfstate           # Current infrastructure state
└── README.md
```

---

## Prerequisites

Install the following before getting started:

| Tool | Purpose |
|---|---|
| [Terraform](https://developer.hashicorp.com/terraform/install) | Infrastructure provisioning |
| [MongoDB](https://www.mongodb.com/try/download/community) | Database |
| [Git](https://git-scm.com/) | Version control |
| Cloud CLI *(optional)* | Cloud provider interaction |

**Verify your Terraform installation:**

```bash
terraform -version
```

---

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/shruthiiilankaaa/terraform-mongo.git
cd terraform-mongo
```

### 2. Initialize Terraform

Downloads required providers and sets up the working directory.

```bash
terraform init
```

### 3. Validate Configuration

Checks for syntax errors and configuration issues.

```bash
terraform validate
```

### 4. Preview Changes

Shows what infrastructure will be created or modified — no changes applied yet.

```bash
terraform plan
```

### 5. Apply Infrastructure

Provisions the infrastructure defined in `main.tf`.

```bash
terraform apply
```

### 6. Destroy Infrastructure

Tears down all provisioned resources when no longer needed.

```bash
terraform destroy
```

---

## Configuration Example

The core Terraform configuration in `main.tf` uses the `null` provider as a base setup:

```hcl
terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0"
    }
  }
}

provider "null" {}
```

---

## CI/CD Pipeline

The GitHub Actions workflow (`.github/workflows/terraform.yml`) runs on every push and handles:

- Terraform format and validation checks
- Infrastructure workflow testing
- Automated deployment experimentation
- CI pipeline integration

---

## Roadmap

- [ ] Multi-environment deployments (dev / staging / prod)
- [ ] Kubernetes provisioning
- [ ] Cloud provider integration (AWS / GCP / Azure)
- [ ] Infrastructure monitoring and alerting
- [ ] Automated rollback workflows

---

## What I Learned

Working on this project provided hands-on experience with:

- Infrastructure as Code principles and best practices
- Terraform lifecycle: `init` → `plan` → `apply` → `destroy`
- Managing infrastructure state and provider lock files
- Automating infrastructure workflows with GitHub Actions
- Environment reproducibility through version-controlled configs

---

## Author

**Lanka Sruthi**
GitHub: [@shruthiiilankaaa](https://github.com/shruthiiilankaaa)

---

## License

This project is open for learning and experimentation. Feel free to fork and build on it.
