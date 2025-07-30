# 🛫 toolchain-preflight

**toolchain-preflight** is a developer and DevOps helper tool that checks if your system has the essential CLI tools installed — grouped by category and purpose.  
Ideal for bootstrapping WSL, Linux, or macOS environments, verifying CI runners, or onboarding team members.

---

## 📋 Features

- Checks the presence of critical developer and DevOps tools
- Organized into clear functional groups (cloud, containers, security, etc.)
- Outputs clean ✅ / ❌ status per tool
- Supports both a simple Bash script and a structured Ansible playbook
- Easy to customize and extend

---

## 📦 Recommended Tool Categories

### 🛠️ Core Dev & Ops Tools
These are essential for basic scripting, downloading, and working with structured data.

| Tool    | Description                             |
|---------|-----------------------------------------|
| `git`   | Version control for source code         |
| `curl`  | HTTP client for APIs and files          |
| `wget`  | Alternative file downloader             |
| `jq`    | JSON query and manipulation             |
| `yq`    | YAML query (like jq but for YAML)       |
| `make`  | Build system and task runner            |

---

### ☁️ Infrastructure & Cloud CLI Tools
Tools used to manage infrastructure as code and cloud environments.

| Tool        | Description                                   |
|-------------|-----------------------------------------------|
| `terraform` | Define and provision infrastructure as code   |
| `ansible`   | Automate configuration and provisioning       |
| `aws`       | Manage AWS services from the CLI              |
| `az`        | Microsoft Azure CLI                           |
| `gcloud`    | Google Cloud Platform CLI                     |

---

### 🐳 Container & Kubernetes Tools

| Tool             | Description                                 |
|------------------|---------------------------------------------|
| `docker`         | Run and manage containers locally           |
| `docker-compose` | Compose multi-container applications        |
| `kubectl`        | Manage Kubernetes clusters and resources    |
| `helm`           | Kubernetes package manager                  |
| `kind`           | Run Kubernetes clusters in Docker           |
| `minikube`       | Run K8s clusters locally via VM or container|

---

### 🔒 Security Tools

| Tool    | Description                                          |
|---------|------------------------------------------------------|
| `vault` | Secure storage for secrets and encryption keys       |
| `gpg`   | Encrypt/sign files using GNU Privacy Guard           |
| `trivy` | Scan containers, IaC, and source code for vulnerabilities |
| `sops`  | Encrypt files for GitOps and secrets-as-code workflows |

---

### 🧪 Testing & Linting Tools

| Tool        | Description                          |
|-------------|--------------------------------------|
| `pre-commit`| Automate code checks before commit   |
| `shellcheck`| Static analysis for shell scripts    |
| `hadolint`  | Linter for Dockerfiles               |
| `yamllint`  | Linter for YAML configuration files  |

---

### 🔧 Developer Productivity Tools

| Tool   | Description                          |
|--------|--------------------------------------|
| `fzf`  | Fuzzy finder for terminal            |
| `bat`  | Syntax-highlighted `cat` alternative |
| `htop` | Interactive process viewer           |
| `tldr` | Simplified `man` pages               |
| `ncdu` | Disk usage analyzer                  |
| `tree` | Visual directory structure view      |

---

## 🚀 Usage

### 🔁 Option 1: Shell Script

1. Clone this repo:
   ```bash
   git clone https://github.com/yourusername/toolchain-preflight.git
   cd toolchain-preflight
