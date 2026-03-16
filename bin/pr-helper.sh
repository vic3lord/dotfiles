#!/usr/bin/env bash

# Safety flags
set -euo pipefail

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

function log_info() {
    echo -e "${BLUE}info:${NC} $1"
}

function log_success() {
    echo -e "${GREEN}success:${NC} $1"
}

function log_error() {
    echo -e "${RED}error:${NC} $1" >&2
}

# Ensure all required commands are available
function ensure_dependencies() {
    for cmd in "$@"; do
        if ! command -v "$cmd" &>/dev/null; then
            log_error "Required dependency '$cmd' is not installed."
            exit 1
        fi
    done
}

# Check if we are inside a git repository
function ensure_git_repo() {
    if ! git rev-parse --is-inside-work-tree &>/dev/null; then
        log_error "Current directory is not a git repository."
        exit 1
    fi
}

# Sanitize a string for use as a branch name (kebab-case)
function sanitize_title() {
    echo "$1" | 
        tr '[:upper:]' '[:lower:]' | 
        tr -s ' ' '-' | 
        sed 's/^-//;s/-$//' | 
        tr -cd '[:alnum:]-'
}

# Prompt for a semantic commit prefix using fzf
function get_semantic_prefix() {
    echo -e 'feat
chore
fix' | fzf --no-multi -1 --exit-0 --header="Select semantic type"
}

# Handle branch creation/switching and initial empty commit
function handle_branch_logic() {
    local branch_name="$1"
    local commit_message="$2"

    if git rev-parse --verify "$branch_name" &>/dev/null; then
        log_info "Branch '$branch_name' already exists, switching!"
        git switch "$branch_name"
        exit 0
    fi

    log_info "Creating new branch: $branch_name"
    git checkout -b "$branch_name"
    git commit --allow-empty -m "$commit_message"
}

# Standardized PR creation via GitHub CLI
function create_gh_pr() {
    local title="$1"
    
    log_info "Creating draft PR: $title"
    gh pr create \
        --assignee @me \
        --draft \
        --fill \
        --title "$title"
}
