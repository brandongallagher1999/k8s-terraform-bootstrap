<p align="center">
  <img width="600" height="250" src="https://blog.jcorioland.io/images/terraform-microsoft-azure-introduction/terraform-azure.png" />
</p>

<h1 align="center">👋 Terraform, Helm, Azure AD Boilerplate</h1>

## What is this?

This boilerplate providers you with an autoscaling Kubernetes Cluster, NGINX Ingress Controler, SRE & Developer Azure AD Group, and pre-made Helm boilerplate.

## 💻 Technologies

- ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
- ![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
- ![Azure](https://img.shields.io/badge/azure-%230072C6.svg?style=for-the-badge&logo=microsoftazure&logoColor=white)

## 🤔 Why?

Have you ever started up a new project and found yourself wasting hours of your time trying to bootstrap a basic K8s Cluster?

This repo contains all the essentials you need for starting a Kubernetes project with simple permissions. Straight to the point.

## Prerequisites

- [Terraform](https://www.terraform.io/)
- [Azure Subscription](https://azure.microsoft.com/en-ca/)

## ✅ Services Available

- [Azure Kubernetes Services](https://learn.microsoft.com/en-us/azure/aks/)
- [Azure Public IP](https://learn.microsoft.com/en-us/azure/virtual-network/ip-services/public-ip-addresses)
- [NGINX Ingress Controller](https://github.com/kubernetes/ingress-nginx)
- [Azure Active Directory](https://azure.microsoft.com/en-us/products/active-directory/)
- [Kubernetes AAD RBAC](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)

## 📚 Configuration

For each /live/ folder, you must provider a `variables.auto.tfvars` file to fill out the relavant parameters to your cluster configuration.
Each folder contains a `variables.tf` with a description for each relevant variable you need to provide.

## 🚀Deployment

Since the Kubernetes & Helm Terraform provider is reliant upon a cluster already being up and running, it is not possible to couple each component of the Cluster in a single Terraform folder. This is why it's essential to deploy certain resources in order.

```sh
#1. Deploy the cluster.

cd ./infrastructure/live/cluster
terraform init
terraform plan
terraform apply

#2. Deploy the Nginx Ingress Helm chart
cd ./infrastructure/live/helm
terraform init
terraform plan
terraform apply

#3. Deploy the SRE AAD Group & K8s RBAC Binding
cd ./infrastructure/live/ad
terraform init
terraform plan
terraform apply
```
