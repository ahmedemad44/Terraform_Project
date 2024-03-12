# Terraform_Project
## Overview

This Terraform project is designed to deploy infrastructure in two separate AWS regions: Project 1 and Project 2.
The infrastructure includes the creation of various AWS resources such as(EC2 instances, DynamoDB tables, S3 buckets, Virtual Private Clouds (VPCs), and subnets).
The latest commit introduces VPC endpoints to enhance security and connectivity within the infrastructure.

## modules/: Contains reusable Terraform modules for creating EC2 instances, DynamoDB tables, S3 buckets, and VPCs.
main.tf: Main Terraform configuration file for creating the infrastructure in both regions.
variables.tf: Defines variables used throughout the project.
outputs.tf: Defines outputs that may be useful after the infrastructure is deployed.
regions/: Contains region-specific configurations for Project 1 and Project 2.
vpc-endpoints/: Introduces VPC endpoints for enhanced security and connectivity.
## Configuration
Configure the project by modifying the variables in the variables.tf file and the region-specific configurations in the regions/ directory. Ensure that the AWS credentials are correctly set up on your machine.

## Modules
This project utilizes modularization for creating different AWS resources. The modules are located in the modules/ directory. Each module has its own configuration and can be reused across regions or projects.

ec2/: Creates EC2 instances.
dynamodb/: Sets up DynamoDB tables.
s3/: Configures S3 buckets.
vpc/: Defines VPCs and subnets.
VPC Endpoints
The vpc-endpoints/ directory contains configurations for VPC endpoints. These endpoints enhance security and connectivity by allowing private communication between resources within the VPC and AWS services.

## How to Use
1-Clone the repository:
## git clone https://github.com/ahmedemad44/Terraform_Project

1-Modify the necessary configurations in variables.tf and the region-specific files in the regions/ directory.

2-Initialize the Terraform configuration:
## terraform init
1-Deploy the infrastructure:
## terraform apply
1-Confirm the changes and proceed with the deployment.

