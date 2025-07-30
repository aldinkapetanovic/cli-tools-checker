# 🛫 toolchain-preflight

**toolchain-preflight** is a lightweight, extensible script to verify that your local development environment (Linux, WSL, macOS) has the required CLI tools installed — like `terraform`, `kubectl`, `docker`, and more.

Ideal for infrastructure engineers, DevOps teams, and anyone who wants a quick sanity check before running IaC, Kubernetes, or container-based workloads.

---

## ✅ What It Does

- Checks if required tools are **installed**
- Optionally validates **version numbers**
- Reports missing or misconfigured tools
- Works in **WSL**, native Linux, or macOS
- Can be extended to auto-install missing tools (optional)

---

## 📦 Tools Checked (by default)

- `terraform`
- `kubectl`
- `docker`

You can customize the list easily in the script.

---

## 🧪 Example Output

```bash
🔍 Checking required tools...
✅ terraform is installed: Terraform v1.8.2
✅ kubectl is installed: kubectl v1.29.0
❌ docker is NOT installed or not in PATH
