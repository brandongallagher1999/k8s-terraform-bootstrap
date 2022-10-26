<p align="center">
  <img src="https://www.google.com/url?sa=i&url=https%3A%2F%2Fblog.jcorioland.io%2Farchives%2F2019%2F09%2F04%2Fterraform-microsoft-azure-introduction.html&psig=AOvVaw2_OxZkF7K6HHKeYls-bpBN&ust=1666902923541000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCMDdobff_voCFQAAAAAdAAAAABAE" />
</p>

<h1 align="center">👋 Terraform, Helm, Azure AD Boilerplate</h1>

## What is this?

This boilerplate providers you with an Kubernetes Cluster, NGINX Ingress Controler, SRE AAD Group, and pre-made Helm boilerplate.

## 💻 Technologies
- ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
- ![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
- ![Azure](https://img.shields.io/badge/azure-%230072C6.svg?style=for-the-badge&logo=microsoftazure&logoColor=white)

## 🤔 Why?

Have you ever started up a new project and found yourself wasting hours of your time trying to bootstrap a basic K8s Cluster?

This repo contains all the essentials you need for starting a simple project with simple permissions. Straight to the point.

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
terraform plan
terraform apply

#2. Deploy the Nginx Ingress Helm chart
cd ./infrastructure/live/helm
terraform plan
terraform apply

#3. Deploy the SRE AAD Group & K8s RBAC Binding
cd ./infrastructure/live/ad
terraform plan
terraform apply
```
