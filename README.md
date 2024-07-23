# Multi-Tier Web Application Infrastructure

This repository contains Terraform configurations for setting up a scalable and secure multi-tier architecture for a web application. The setup includes:

- A Virtual Private Cloud (VPC) with public and private subnets
- An Application Load Balancer (ALB)
- Auto-Scaling Groups for web servers
- An RDS MySQL database

## Architecture Overview

- **VPC**: Defines a custom network with public and private subnets.
- **Application Load Balancer**: Distributes incoming traffic across multiple web servers.
- **Auto-Scaling Groups**: Automatically adjusts the number of web servers based on traffic.
- **RDS Database**: Provides a managed MySQL database.

## Setup

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- An [AWS account](https://aws.amazon.com/).

### Clone the Repository

1. Clone the repository to your local machine:

    ```bash
    git clone https://github.com/your-username/multi-tier-web-app.git
    cd multi-tier-web-app
    ```

### Initialize Terraform

2. Initialize Terraform to install required providers and modules:

    ```bash
    terraform init
    ```

### Review Configuration

3. Review the Terraform configuration:

    ```bash
    terraform plan
    ```

### Apply Configuration

4. Apply the Terraform configuration to create the infrastructure:

    ```bash
    terraform apply
    ```

   - Confirm the action by typing `yes` when prompted.

## GitHub Actions

This repository includes a GitHub Actions workflow to automatically apply Terraform changes on pushes to the main branch.

### Workflow Configuration

- **`terraform-deploy.yml`**: Configured to run on every push to the `main` branch. It performs the following steps:
  - Check out the code
  - Set up Terraform
  - Initialize Terraform
  - Plan and apply changes

## Files Structure

- **`terraform/`**: Contains Terraform configuration files.
  - **`main.tf`**: Main configuration file.
  - **`variables.tf`**: Variable definitions.
  - **`outputs.tf`**: Output values.
  - **`provider.tf`**: Cloud provider setup.
  - **`vpc.tf`**: VPC and subnet configurations.
  - **`iam.tf`**: IAM roles and policies.
  - **`alb.tf`**: Application Load Balancer configuration.
  - **`autoscaling.tf`**: Auto-scaling group setup.

- **`.github/workflows/terraform-deploy.yml`**: GitHub Actions workflow for Terraform deployment.
