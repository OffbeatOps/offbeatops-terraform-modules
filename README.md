# AWS Terraform Modules

This repository contains reusable Terraform modules for provisioning AWS infrastructure. The goal is to facilitate consistent and efficient deployment across multiple environments and regions. Each module in this repository is designed to be simple to integrate into larger Infrastructure as Code (IaC) projects.

## Module Overview

- **iam/**: Modules for creating and managing IAM roles, policies, and users.
- **vpc/**: A module for creating a VPC, including CIDR block assignment and tagging.
- **subnets/**: Module for creating public and private subnets within a VPC.
- **ecr/**: Module to provision Elastic Container Registry (ECR) repositories.
- **eks/**: Module for setting up an Amazon EKS cluster.
- **karpenter/**: Module for deploying Karpenter for cluster autoscaling with spot instance support.
- **load-balancer/**: Module for provisioning an AWS Application Load Balancer (ALB) or Network Load Balancer (NLB).
- **route53/**: Module for configuring Route 53 hosted zones and DNS records.
- **s3/**: Module for creating S3 buckets for storage, logging, or static website hosting.
- **network-acls/**: Module for setting up Network Access Control Lists (NACLs) for network traffic control.
- **security-groups/**: Module for creating security groups with customizable rules.

## Usage

Each module can be used independently in your Terraform projects. Here's a basic usage example for the VPC module:

```hcl
module "vpc" {
  source = "../aws/vpc"

  vpc_name = "my-vpc"
  cidr_block = "10.0.0.0/16"
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.101.0/24", "10.0.102.0/24"]
}