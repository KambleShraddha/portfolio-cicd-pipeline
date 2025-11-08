# 🚀 Portfolio CI/CD Pipeline (Azure-Ready)

![Status](https://img.shields.io/badge/Status-Simulation--Ready-success)
![Jenkins](https://img.shields.io/badge/Jenkins-Multi--Stage-blue)
![Docker](https://img.shields.io/badge/Docker-Containerization-2496ED)
![Azure](https://img.shields.io/badge/Azure-Cloud--Ready-0078D4)
![GitHub](https://img.shields.io/badge/SourceControl-GitHub-black)

## 📘 Project Overview
This project demonstrates a **fully automated CI/CD pipeline** built for a static portfolio website using **Jenkins, Docker, and GitHub** — with deployment scripts that can be extended to **Azure Virtual Machines** or **Azure Web Apps**.

It simulates real-world DevOps practices for:
- Continuous Integration (CI) with Jenkins
- Containerization using Docker
- Automated Deployment scripts (Azure-ready)
- Git-based version control & webhooks

---

## 🧰 Tech Stack
| Tool | Purpose |
|------|----------|
| **Jenkins** | CI/CD automation |
| **Docker** | Containerized app packaging |
| **GitHub** | Source code management |
| **Azure VM (Ready)** | Deployment target (future integration) |
| **Shell Script** | Automates deployment & cleanup |

---

## ⚙️ Pipeline Workflow

```mermaid
flowchart LR
  A[Developer Push to GitHub] --> B[Jenkins CI Pipeline]
  B --> C[Build & Test Stage]
  C --> D[Docker Image Build]
  D --> E[Deploy (Local or Azure)]
  E --> F[Smoke Test Container]
  F --> G[Success Notification]
