# Azure-DevOps-Platform
# Production-Grade Azure Kubernetes Platform using Terraform, GitOps & DevSecOps



## Project Overview



This project demonstrates how to design, provision, deploy, secure, monitor, and operate a production-grade Kubernetes platform on Microsoft Azure.



The platform is built around Azure Kubernetes Service (AKS) using Infrastructure as Code (Terraform), GitOps (ArgoCD), GitHub Actions CI/CD, and enterprise observability and security practices.



The application deployed is the Microsoft AKS Store Demo, which consists of multiple microservices running on Kubernetes.



---



## Project Objectives



- Provision Azure infrastructure using Terraform

- Deploy a production-ready AKS cluster

- Containerize and deploy microservices

- Implement GitOps using ArgoCD

- Build CI/CD pipelines using GitHub Actions

- Configure ingress with HTTPS

- Secure secrets using Azure Key Vault

- Implement monitoring and observability

- Apply DevSecOps best practices

- Configure backup and disaster recovery

- Perform performance testing and autoscaling



---



## Technology Stack



### Cloud



- Microsoft Azure

- Azure Kubernetes Service (AKS)

- Azure Container Registry (ACR)

- Azure Key Vault

- Azure Monitor

- Log Analytics

- Application Insights



### Infrastructure as Code



- Terraform



### Containerization



- Docker



### Orchestration



- Kubernetes

- Helm



### GitOps



- ArgoCD



### CI/CD



- GitHub Actions



### Monitoring



- Prometheus

- Grafana

- Loki

- OpenTelemetry



### Security



- Trivy

- Workload Identity

- Secrets Store CSI Driver

- Kubernetes RBAC

- Network Policies



### Backup



- Velero



### Performance Testing



- k6



---



## Repository Structure



```

azure-aks-platform/



├── docs/

├── diagrams/

├── terraform/

├── kubernetes/

├── helm/

├── .github/workflows/

├── scripts/

├── tests/

└── README.md

```

--- 







## Architecture



> Architecture diagram will be added in a future sprint.











---



## License



This project is licensed under the MIT License.
