# terraform-aws-project
cloud infrastructure on aws using terraform

# 🚀 AWS Highly Available Web Infrastructure using Terraform (VPC + ALB + EC2 + S3)
## 📌 Overview

This project demonstrates the design and deployment of a **highly available, scalable AWS infrastructure** using **Terraform (Infrastructure as Code)**.
It provisions a complete cloud environment including networking, compute, load balancing, and storage services across multiple Availability Zones.
The goal of this project is to simulate a real-world production environment and demonstrate DevOps and Cloud Engineering skills.

## 🏗️ Architecture

                    Internet
                        |
                        v
            ┌──────────────────────┐
            │  Application Load    │
            │     Balancer (ALB)   │
            └─────────┬────────────┘
                      |
      ┌───────────────┴───────────────┐
      |                               |
      v                               v


---

## ⚙️ Tech Stack

- **Terraform**
- **AWS Cloud**
  - EC2 (Ubuntu)
  - VPC
  - Subnets (Multi-AZ)
  - Internet Gateway
  - Route Tables
  - Security Groups
  - Application Load Balancer (ALB)
  - Target Groups
  - S3 Bucket
- **Apache Web Server**
- **Linux (Ubuntu 22.04)**

## 📦 Infrastructure Components

### 🌐 Networking Layer
- Custom VPC
- Public Subnets across 2 Availability Zones
- Internet Gateway for external access
- Route Tables for internet routing

### 🔐 Security Layer
- Security Groups for EC2 instances
- Separate Security Group for ALB
- Controlled inbound traffic (HTTP/SSH)

### 🖥️ Compute Layer
- 2 Ubuntu EC2 instances
- Automated setup using Terraform user data scripts
- Apache web server installed on boot

### ⚖️ Load Balancing
- Application Load Balancer (ALB)
- Target Group with health checks
- Traffic distributed across EC2 instances

### ☁️ Storage
- S3 bucket configured for public access (learning purpose)

## 🚀 Features

✔ Infrastructure as Code using Terraform  
✔ Multi-AZ deployment for high availability  
✔ Automated server provisioning using user data  
✔ Load balancing using AWS ALB  
✔ Health check–based traffic routing  
✔ Modular and reusable infrastructure design  
✔ Real-world AWS architecture practice  

## 🧠 Key Learnings

- Designing VPC architecture from scratch
- AWS networking (Subnets, IGW, Route Tables)
- ALB and Target Group configuration
- EC2 bootstrapping using user data scripts
- Security group communication between ALB and EC2
- Debugging Terraform state and AWS errors
- Understanding S3 bucket ACL behavior changes

## ⚠️ Challenges Solved

- Fixed ALB target group health check failures  
- Resolved Ubuntu vs Amazon Linux user-data differences  
- Solved Terraform EC2 security group misconfiguration  
- Handled S3 ACL restriction issues (modern AWS behavior)  
- Debugged VPC networking and routing issues  

## 📂 Project Structure

├── main.tf
|--provider.tf
├── variables.tf
├── outputs.tf
├── userdata.sh
├── userdata1.sh
└── README.md

terraform init
terraform validate
terraform plan
terraform apply -auto-approve
terraform destroy



🌐 Access Application
After deployment, Terraform outputs the ALB DNS name:

alb_dns_name = my-lb-xxxxxxxx.us-east-2.elb.amazonaws.com

Open in browser:

http://<alb_dns_name>

You will see responses like:
Server 1
Server 2

(traffic is load balanced across instances)
