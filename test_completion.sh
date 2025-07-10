#!/bin/bash

# Git Fundamentals and Commands Skills Application Test Script
# This script verifies completion of all required Git tasks

echo "=== Git Fundamentals and Commands Skills Application Test ==="
echo "Testing completion of challenge tasks..."
echo

# Initialize test results
TASK1_PASSED=false
TASK2_PASSED=false
TASK3_PASSED=false
TASK4_PASSED=false
TASK5_PASSED=false

# Function to check if we're in a git repository
is_git_repo() {
    git rev-parse --is-inside-work-tree >/dev/null 2>&1
}

# Test Task 1: Git Repository Setup and Configuration
echo "Testing Task 1: Git Repository Setup and Configuration..."
TASK1_CHECKS=0
TASK1_TOTAL=8

# Check if git-fundamentals-project directory exists
if [ -d "$HOME/git-fundamentals-project" ]; then
    echo "✓ git-fundamentals-project directory exists"
    ((TASK1_CHECKS++))
    
    # Change to the project directory for subsequent tests
    cd "$HOME/git-fundamentals-project"
    
    # Check if it's a git repository
    if is_git_repo; then
        echo "✓ Git repository initialized"
        ((TASK1_CHECKS++))
    else
        echo "✗ Not a Git repository"
    fi
    
    # Check git configuration
    if git config user.name >/dev/null 2>&1 && git config user.email >/dev/null 2>&1; then
        echo "✓ Git user configuration set"
        ((TASK1_CHECKS++))
    else
        echo "✗ Git user configuration not set"
    fi
    
    # Check for .gitignore file
    if [ -f ".gitignore" ] && [ -s ".gitignore" ]; then
        echo "✓ .gitignore file exists and has content"
        ((TASK1_CHECKS++))
    else
        echo "✗ .gitignore file not found or empty"
    fi
    
    # Check for README.md
    if [ -f "README.md" ] && [ -s "README.md" ]; then
        echo "✓ README.md file exists and has content"
        ((TASK1_CHECKS++))
    else
        echo "✗ README.md file not found or empty"
    fi
    
    # Check if files are committed
    if git log --oneline >/dev/null 2>&1; then
        echo "✓ Initial commit exists"
        ((TASK1_CHECKS++))
    else
        echo "✗ No commits found"
    fi
    
    # Check for git-setup-log.txt
    if [ -f "git-setup-log.txt" ] && [ -s "git-setup-log.txt" ]; then
        echo "✓ Git setup log documented"
        ((TASK1_CHECKS++))
    else
        echo "✗ Git setup log not found or empty"
    fi
    
    # Check that .gitignore and README.md are committed
    if git ls-files | grep -q "\.gitignore" && git ls-files | grep -q "README\.md"; then
        echo "✓ Initial files are tracked by git"
        ((TASK1_CHECKS++))
    else
        echo "✗ Initial files not properly tracked"
    fi
    
else
    echo "✗ git-fundamentals-project directory not found"
fi

if [ $TASK1_CHECKS -eq $TASK1_TOTAL ]; then
    TASK1_PASSED=true
fi
echo

# Test Task 2: Working with Git States and Basic Commands
echo "Testing Task 2: Working with Git States and Basic Commands..."
TASK2_CHECKS=0
TASK2_TOTAL=6

if [ -d "$HOME/git-fundamentals-project" ]; then
    cd "$HOME/git-fundamentals-project"
    
    # Check for required files
    if [ -f "main.py" ] && [ -f "utils.py" ] && [ -f "config.json" ]; then
        echo "✓ Required files (main.py, utils.py, config.json) exist"
        ((TASK2_CHECKS++))
    else
        echo "✗ Required files not found"
    fi
    
    # Check if files have content
    if [ -s "main.py" ] && [ -s "utils.py" ] && [ -s "config.json" ]; then
        echo "✓ Files have content"
        ((TASK2_CHECKS++))
    else
        echo "✗ Some files are empty"
    fi
    
    # Check if files are committed
    if git ls-files | grep -q "main\.py" && git ls-files | grep -q "utils\.py" && git ls-files | grep -q "config\.json"; then
        echo "✓ Files are tracked by git"
        ((TASK2_CHECKS++))
    else
        echo "✗ Files not properly tracked by git"
    fi
    
    # Check for git-states-explanation.txt
    if [ -f "git-states-explanation.txt" ] && [ -s "git-states-explanation.txt" ]; then
        echo "✓ Git states explanation documented"
        ((TASK2_CHECKS++))
    else
        echo "✗ Git states explanation not found or empty"
    fi
    
    # Check if there are multiple commits (indicating progression)
    COMMIT_COUNT=$(git rev-list --count HEAD 2>/dev/null || echo 0)
    if [ "$COMMIT_COUNT" -gt 1 ]; then
        echo "✓ Multiple commits exist (indicating progression)"
        ((TASK2_CHECKS++))
    else
        echo "✗ Only one commit found - more commits expected"
    fi
    
    # Check for evidence of git states understanding (look for key terms in explanation)
    if [ -f "git-states-explanation.txt" ] && 
       (grep -qi "working directory\|staging area\|repository" "git-states-explanation.txt" 2>/dev/null ||
        grep -qi "git add\|git commit\|git diff" "git-states-explanation.txt" 2>/dev/null); then
        echo "✓ Git states explanation contains relevant content"
        ((TASK2_CHECKS++))
    else
        echo "✗ Git states explanation lacks relevant content"
    fi
else
    echo "✗ Cannot test Task 2 - project directory not found"
fi

if [ $TASK2_CHECKS -eq $TASK2_TOTAL ]; then
    TASK2_PASSED=true
fi
echo

# Test Task 3: Git History and Log Management
echo "Testing Task 3: Git History and Log Management..."
TASK3_CHECKS=0
TASK3_TOTAL=6

if [ -d "$HOME/git-fundamentals-project" ]; then
    cd "$HOME/git-fundamentals-project"
    
    # Check for minimum number of commits
    COMMIT_COUNT=$(git rev-list --count HEAD 2>/dev/null || echo 0)
    if [ "$COMMIT_COUNT" -ge 4 ]; then
        echo "✓ At least 4 commits exist (initial + 3 more)"
        ((TASK3_CHECKS++))
    else
        echo "✗ Expected at least 4 commits, found $COMMIT_COUNT"
    fi
    
    # Check for commit-history.txt
    if [ -f "commit-history.txt" ] && [ -s "commit-history.txt" ]; then
        echo "✓ Commit history saved to file"
        ((TASK3_CHECKS++))
    else
        echo "✗ Commit history file not found or empty"
    fi
    
    # Check for git-log-analysis.txt
    if [ -f "git-log-analysis.txt" ] && [ -s "git-log-analysis.txt" ]; then
        echo "✓ Git log analysis documented"
        ((TASK3_CHECKS++))
    else
        echo "✗ Git log analysis not found or empty"
    fi
    
    # Check for meaningful commit messages
    if git log --oneline | grep -v "^[a-f0-9]\{7\} [A-Z]" | wc -l | grep -q "^0$"; then
        echo "✓ Commit messages appear to be descriptive"
        ((TASK3_CHECKS++))
    else
        echo "✓ Commit messages found (assuming they are descriptive)"
        ((TASK3_CHECKS++))
    fi
    
    # Check if analysis file contains relevant content
    if [ -f "git-log-analysis.txt" ] && 
       (grep -qi "git log\|oneline\|graph\|show" "git-log-analysis.txt" 2>/dev/null); then
        echo "✓ Log analysis contains relevant Git commands"
        ((TASK3_CHECKS++))
    else
        echo "✗ Log analysis lacks relevant content"
    fi
    
    # Check for evidence of using different log formats
    if [ -f "commit-history.txt" ] && [ -s "commit-history.txt" ]; then
        echo "✓ Evidence of log output captured"
        ((TASK3_CHECKS++))
    else
        echo "✗ No evidence of log output captured"
    fi
else
    echo "✗ Cannot test Task 3 - project directory not found"
fi

if [ $TASK3_CHECKS -eq $TASK3_TOTAL ]; then
    TASK3_PASSED=true
fi
echo

# Test Task 4: Basic Branching and Repository Management
echo "Testing Task 4: Basic Branching and Repository Management..."
TASK4_CHECKS=0
TASK4_TOTAL=8

if [ -d "$HOME/git-fundamentals-project" ]; then
    cd "$HOME/git-fundamentals-project"
    
    # Check for feature-development branch
    if git branch -a | grep -q "feature-development"; then
        echo "✓ feature-development branch exists"
        ((TASK4_CHECKS++))
    else
        echo "✗ feature-development branch not found"
    fi
    
    # Check for bugfix branch
    if git branch -a | grep -q "bugfix"; then
        echo "✓ bugfix branch exists"
        ((TASK4_CHECKS++))
    else
        echo "✗ bugfix branch not found"
    fi
    
    # Check for feature.py file
    if [ -f "feature.py" ] && [ -s "feature.py" ]; then
        echo "✓ feature.py file exists with content"
        ((TASK4_CHECKS++))
    else
        echo "✗ feature.py file not found or empty"
    fi
    
    # Check if feature.py is committed
    if git ls-files | grep -q "feature\.py"; then
        echo "✓ feature.py is tracked by git"
        ((TASK4_CHECKS++))
    else
        echo "✗ feature.py not tracked by git"
    fi
    
    # Check for branching-workflow.txt
    if [ -f "branching-workflow.txt" ] && [ -s "branching-workflow.txt" ]; then
        echo "✓ Branching workflow documented"
        ((TASK4_CHECKS++))
    else
        echo "✗ Branching workflow documentation not found or empty"
    fi
    
    # Check for git-commands-summary.txt
    if [ -f "git-commands-summary.txt" ] && [ -s "git-commands-summary.txt" ]; then
        echo "✓ Git commands summary documented"
        ((TASK4_CHECKS++))
    else
        echo "✗ Git commands summary not found or empty"
    fi
    
    # Check for evidence of merge (look for merge commits)
    if git log --oneline | grep -i "merge" >/dev/null 2>&1; then
        echo "✓ Evidence of merge operations found"
        ((TASK4_CHECKS++))
    else
        echo "✗ No evidence of merge operations found"
    fi
    
    # Check if multiple branches exist in history
    BRANCH_COUNT=$(git branch -a | wc -l)
    if [ "$BRANCH_COUNT" -gt 1 ]; then
        echo "✓ Multiple branches exist"
        ((TASK4_CHECKS++))
    else
        echo "✗ Only one branch found - expected multiple branches"
    fi
else
    echo "✗ Cannot test Task 4 - project directory not found"
fi

if [ $TASK4_CHECKS -eq $TASK4_TOTAL ]; then
    TASK4_PASSED=true
fi
echo

# Test Task 5: Git Best Practices and Workflow
echo "Testing Task 5: Git Best Practices and Workflow..."
TASK5_CHECKS=0
TASK5_TOTAL=6

if [ -d "$HOME/git-fundamentals-project" ]; then
    cd "$HOME/git-fundamentals-project"
    
    # Check for development branch
    if git branch -a | grep -q "development"; then
        echo "✓ development branch exists"
        ((TASK5_CHECKS++))
    else
        echo "✗ development branch not found"
    fi
    
    # Check for docs folder
    if [ -d "docs" ] && ls docs/ >/dev/null 2>&1; then
        echo "✓ docs folder exists with content"
        ((TASK5_CHECKS++))
    else
        echo "✗ docs folder not found or empty"
    fi
    
    # Check for git-workflow-guide.txt
    if [ -f "git-workflow-guide.txt" ] && [ -s "git-workflow-guide.txt" ]; then
        echo "✓ Git workflow guide documented"
        ((TASK5_CHECKS++))
    else
        echo "✗ Git workflow guide not found or empty"
    fi
    
    # Check if workflow guide contains relevant content
    if [ -f "git-workflow-guide.txt" ] && 
       (grep -qi "commit message\|branch\|workflow\|git command" "git-workflow-guide.txt" 2>/dev/null ||
        grep -qi "best practice\|git add\|git commit" "git-workflow-guide.txt" 2>/dev/null); then
        echo "✓ Workflow guide contains relevant content"
        ((TASK5_CHECKS++))
    else
        echo "✗ Workflow guide lacks relevant content"
    fi
    
    # Check for comprehensive commit history
    FINAL_COMMIT_COUNT=$(git rev-list --count HEAD 2>/dev/null || echo 0)
    if [ "$FINAL_COMMIT_COUNT" -ge 8 ]; then
        echo "✓ Comprehensive commit history (8+ commits)"
        ((TASK5_CHECKS++))
    else
        echo "✗ Expected at least 8 commits, found $FINAL_COMMIT_COUNT"
    fi
    
    # Check that repository is clean (no uncommitted changes)
    if git diff-index --quiet HEAD 2>/dev/null; then
        echo "✓ Repository is clean - all changes committed"
        ((TASK5_CHECKS++))
    else
        echo "✗ Repository has uncommitted changes"
    fi
else
    echo "✗ Cannot test Task 5 - project directory not found"
fi

if [ $TASK5_CHECKS -eq $TASK5_TOTAL ]; then
    TASK5_PASSED=true
fi
echo

# Final Results
echo "=== TEST RESULTS ==="
echo "Task 1 (Git Repository Setup and Configuration): $TASK1_PASSED ($TASK1_CHECKS/$TASK1_TOTAL checks passed)"
echo "Task 2 (Working with Git States and Basic Commands): $TASK2_PASSED ($TASK2_CHECKS/$TASK2_TOTAL checks passed)"
echo "Task 3 (Git History and Log Management): $TASK3_PASSED ($TASK3_CHECKS/$TASK3_TOTAL checks passed)"
echo "Task 4 (Basic Branching and Repository Management): $TASK4_PASSED ($TASK4_CHECKS/$TASK4_TOTAL checks passed)"
echo "Task 5 (Git Best Practices and Workflow): $TASK5_PASSED ($TASK5_CHECKS/$TASK5_TOTAL checks passed)"
echo

# Overall result
if [ "$TASK1_PASSED" = true ] && [ "$TASK2_PASSED" = true ] && [ "$TASK3_PASSED" = true ] && [ "$TASK4_PASSED" = true ] && [ "$TASK5_PASSED" = true ]; then
    echo "OVERALL RESULT: true"
    echo "All Git fundamentals tasks completed successfully!"
    exit 0
else
    echo "OVERALL RESULT: false"
    echo "Some Git fundamentals tasks are incomplete. Please review the requirements."
    exit 1
fi 