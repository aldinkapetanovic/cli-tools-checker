#!/bin/bash

# ────────────────────────────────────────────────
# toolchain-preflight: Check if CLI tools exist
# Grouped, colorized output
# Author: You
# ────────────────────────────────────────────────

# Color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No color

# Check and print status of a tool
check_tool() {
    local tool=$1
    if command -v "$tool" &> /dev/null; then
        local version=$("$tool" --version 2>/dev/null | head -n1)
        echo -e "  ✅ ${GREEN}$tool${NC} — ${version:-Installed}"
    else
        echo -e "  ❌ ${RED}$tool${NC} is NOT installed or not in PATH"
    fi
}

# Tool groups
declare -A TOOL_GROUPS

TOOL_GROUPS["🛠️ Core Dev & Ops Tools"]="git curl wget jq yq make"
TOOL_GROUPS["☁️ IaC & Cloud CLI Tools"]="terraform ansible aws az gcloud"
TOOL_GROUPS["🐳 Container & K8s Tools"]="docker kubectl helm kind minikube"
TOOL_GROUPS["🔒 Security Tools"]="vault gpg trivy sops"
TOOL_GROUPS["🧪 Testing & Linting"]="pre-commit shellcheck hadolint yamllint"
TOOL_GROUPS["🔧 Developer Productivity"]="fzf bat htop tldr ncdu tree"

TOOL_GROUPS["🧩 Optional Tools"]="zsh node npm python pip go cargo rustup nvm pyenv ctop lazydocker k9s"

# Run check
echo -e "\n🔍 ${GREEN}Checking CLI tools grouped by category...${NC}"

for group in "${!TOOL_GROUPS[@]}"; do
    echo -e "\n$group"
    for tool in ${TOOL_GROUPS[$group]}; do
        check_tool "$tool"
    done
done

echo -e "\n📦 ${YELLOW}Note:${NC} Optional tools enhance dev experience but are not strictly required."
echo -e "✅ ${GREEN}Check complete.${NC}\n"
