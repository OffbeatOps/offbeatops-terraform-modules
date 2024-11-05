# AWS Terraform Modules

This repository contains reusable Terraform modules for provisioning AWS infrastructure. The goal is to facilitate consistent and efficient deployment across multiple environments and regions. Each module in this repository is designed to be simple to integrate into larger Infrastructure as Code (IaC) projects.

## Structure
# L1 Modules: Basic building blocks for infrastructure (e.g., VPCs, subnets) are defined here.
# L2 Modules: Higher-level configurations that leverage L1 modules, such as security groups and ECS clusters.
# L3 Modules: Complete implementations for specific services, including EKS clusters and databases.

## Improvements to make
Ideally, these modules have an example adjacent to the module terraform that would run in a pull request workflow to plan, apply, and destroy the resources in a sandbox environment.