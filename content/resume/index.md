---
title: Resume
date: 2023-03-13T12:00:00Z
draft: false
---

## Contact
**Email:** nathan@chowning.me | **GitHub:** [nchowning](https://github.com/nchowning) | **LinkedIn:** [nchowning](https://www.linkedin.com/in/nchowning)  
**Location:** Columbus, OH Area (Open to Remote)

## Summary

Senior Platform Engineer with 15+ years transforming infrastructure organizations—from VMware/Puppet environments to cloud-native Kubernetes platforms. Designed GitOps app deployment architecture for Autodesk's company-wide Kubernetes platform: multi-tenant, hub-and-spoke, serving global production environments across multi-account AWS architectures. Combines deep Linux expertise with modern platform engineering to deliver elegant, maintainable infrastructure that enables developer self-service at scale.

## Skills

**Container & Orchestration:** Kubernetes, Amazon EKS, Docker, Helm, Kustomize, Karpenter  
**GitOps & Continuous Delivery:** ArgoCD, GitOps workflows  
**CI/CD (Continuous Integration/Continuous Delivery) & Pipelines:** GitHub Actions, Harness, Jenkins  
**Infrastructure as Code (IaC):** Terraform, Ansible  
**Cloud Platforms:** AWS (EKS, EC2, IAM, VPC, RDS, S3, KMS, ElastiCache, Secrets Manager, Parameter Store, multi-account architectures)  
**Service Mesh & Networking:** Istio, Envoy  
**Observability:** Prometheus, Grafana, Datadog, Dynatrace, OpenTelemetry  
**Languages:** Python, Bash, Go, YAML  
**Operating Systems:** Linux (RHEL, Ubuntu, Amazon Linux)

## Professional Experience

### **Autodesk** (Senior Platform Engineer | *Apr 2024 - Present*)

Designed GitOps deployment architecture for KaaR (Kubernetes as a Runtime), Autodesk's next-generation internal developer platform built to replace legacy ECS infrastructure company-wide. KaaR operated on clusters provisioned via a hub-and-spoke model with multi-tenant isolation across AWS accounts.

- Authored ArgoCD ApplicationSet patterns, GitOps repository structure, and Helm/Kustomize templating standards adopted as the platform's deployment foundation. Enabled declarative, self-service deployments that eliminated manual pipeline management for application teams.
- Architected Helm values schema consolidating 5+ charts into single-file application configurations, eliminating per-chart values sprawl. Designed layered override system (base → environment → environment+region) enabling teams to manage complex multi-region deployments without duplicating configuration.
- Designed secrets management integration using External Secrets Operator, navigating the platform's cross-account architecture to securely inject Terraform-provisioned credentials (RDS, S3) from data accounts into Kubernetes workloads on Runtime clusters.
- Supported deployments across 5 global production clusters (Tokyo, London, Frankfurt, Canada, Mumbai) serving 50+ applications across the Autodesk Construction Cloud stack, with architecture validated for company-wide scale.
- Led GitOps adoption initiative, transitioning teams from imperative pipeline deployments to declarative workflows. Reduced configuration drift to near-zero and established golden paths for consistent deployments.
- **Platform stack:** EKS, ArgoCD, Helm, Kustomize, Karpenter, External Secrets Operator, Istio, Terraform, Harness

### **Loop** (Senior DevOps Engineer | *Oct 2022 - Apr 2024*)

- Automated EKS cluster bootstrap process, reducing cluster provisioning from multi-day manual effort to under 1 hour. Enabled rapid environment teardown and recreation across dev, stage, and production environments.
- Architected ArgoCD-based continuous delivery platform supporting 3 clusters with 20+ daily deployments, improving deployment consistency and reducing release friction.
- Migrated on-premises Teleport infrastructure to Teleport Cloud, eliminating self-managed infrastructure maintenance overhead and improving access reliability for engineering teams.

### **eFuse** (System Engineer | *Mar 2022 - Oct 2022*)

- Automated Terraform import workflows for 10+ Cloudflare DNS zones, reducing manual configuration effort from hours to minutes for frequent campaign-related changes.
- Deployed Doppler Kubernetes Operator for centralized secrets management, eliminating secrets stored in container images and reducing application attack surface.

### **Immuta** (System Engineer II | *Aug 2021 - Mar 2022*)

- Improved security posture by migrating databases from vulnerable PostgreSQL containers to managed AWS RDS instances.
- Designed snapshot-based backup processes for Consul and Vault clusters, improving disaster recovery posture and reducing RTO.

### **CoverMyMeds** (Senior System Engineer | *Feb 2016 - Aug 2021*)

- Pioneered container-based deployment on a platform originally built on VMware with Puppet-managed VMs. Designed process and automation for first production Docker application; 95% of ~1,000 production servers now run containerized workloads.
- Designed Kubernetes testing environment supporting cloud-native migration initiative, establishing technical foundation for on-premises to AWS transition.
- Built Ansible automation framework adopted as standard for day-to-day maintenance, upgrades, and troubleshooting—significantly reducing manual effort and operational incidents across VMware infrastructure.

### **Nationwide Insurance** (Linux System Engineer | *June 2013 - Feb 2016*)

- Redesigned server lifecycle management Django application and deployed custom Python package across 3,000+ servers to standardize API interactions and reduce provisioning errors.

### **Earlier Experience**

Linux systems engineering roles at Highlights for Children and Jumpline.com (2010–2013), focusing on infrastructure automation, SSO implementation, and technical operations management.

## Certifications

- Red Hat Certified Architect (RHCA)
- Red Hat Certified Engineer (RHCE)
