#!/bin/bash

# Define color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No color

# Function to check and print status of a tool
check_tool() {
    local tool=$1
    if command -v "$tool" &> /dev/null; then
        local version=$("$tool" --version 2>/dev/null | head -n1)
        echo -e "  ✅ ${GREEN}$tool${NC} — ${version:-Installed}"
    else
        echo -e "  ❌ ${RED}$tool${NC} is NOT installed or not in PATH"
    fi
}

# Grouped tool definitions
declare -A TOOL_GROUPS

TOOL_GROUPS["🛠️ Core Dev & Ops Tools"]="git curl wget jq yq make"
TOOL_GROUPS["☁️ IaC & Cloud CLI Tools"]="terraform ansible aws az gcloud"
TOOL_GROUPS["🐳 Container & K8s Tools"]="docker docker-compose kubectl helm kind minikube"
TOOL_GROUPS["🔒 Security Tools"]="vault gpg trivy sops"
TOOL_GROUPS["🧪 Testing & Linting"]="pre-commit shellcheck hadolint yamllint"
TOOL_GROUPS["🔧 Developer Productivity"]="fzf bat htop tldr ncdu tree"

# Loop through each group and check tools
echo -e "\n🔍 ${GREEN}Checking CLI tool availability by group...${NC}"

for group in "${!TOOL_GROUPS[@]}"; do
    echo -e "\n$group"
    for tool in ${TOOL_GROUPS[$group]}; do
        check_tool "$tool"
    done
done

echo -e "\n✅ ${GREEN}Check complete.${NC}"
