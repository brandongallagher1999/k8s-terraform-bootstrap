# Terraform, Helm, Azure AD Boilerplate

## What is this?

This boilerplate providers you with an Kubernetes Cluster, NGINX Ingress Controler, SRE AAD Group, and pre-made Helm boilerplate.

## Why?

Have you ever started up a new project and found yourself wasting hours of your time trying to bootstrap a basic K8s Cluster?

This repo contains all the essentials you need for starting a simple project with simple permissions. Straight to the point.

## Configuration

For each /live/ folder, you must provider a `variables.auto.tfvars` file to fill out the relavant parameters to your cluster configuration.
Each folder contains a `variables.tf` with a description for each relevant variable you need to provide.

## Order of deployment

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
