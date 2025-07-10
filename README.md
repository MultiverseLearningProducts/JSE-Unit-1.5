<style>
.box {
  display: Inline-block;  
  text-align: center;
  padding: 15px;
  background-color: #23EB9A;
  border-radius: 10px;
  align-items: Center;
  display: flex;
  justify-content: center;
  }

</style>

<svg width="100%" height="auto" viewBox="0 0 130 40" xmlns="http://www.w3.org/2000/svg"> <path d="M32.782 25.79c0 2.38-1.281 3.83-3.189 3.83-1.96 0-3.245-1.45-3.245-3.83v-8.043h-2.96v7.99c0 4.075 2.256 6.73 6.098 6.73 3.814 0 6.231-2.708 6.231-6.73v-7.99h-2.935zM41.546 12.031h-2.897v20.232h2.897zM57.64 17.763h-2.896v14.5h2.897zM70.247 17.763l-4.055 10.65-4.082-10.65h-3.09l5.682 14.5h2.953l5.681-14.5zM103.757 23.665l-1.711-.394c-1.048-.253-1.572-.815-1.572-1.574 0-1.04.965-1.685 2.261-1.657.8 0 1.601.253 2.372.647a8.7 8.7 0 0 1 2.097 1.406v-3.038c-.496-.365-2.289-1.602-4.607-1.602-3.199 0-5.13 2.137-5.13 4.496 0 2.22 1.572 3.316 3.642 3.822l1.654.393c1.463.337 2.18.872 2.18 1.884s-.856 1.967-2.428 1.967c-.993 0-1.987-.337-2.786-.788-.966-.506-1.683-1.124-1.876-1.32l-.055 3.091c.192.196 1.848 1.573 4.799 1.573 3.283 0 5.325-2.303 5.325-4.664.001-2.051-1.407-3.624-4.165-4.242M80.205 17.594c-3.916 0-6.869 3.316-6.869 7.418s3.2 7.417 7.53 7.417c3.311 0 5.13-1.602 5.13-1.602v-2.95s-2.013 1.826-4.91 1.826c-2.62 0-4.33-1.49-4.771-3.569H86.77c.028-.365.056-.759.056-1.124 0-4.1-2.815-7.416-6.621-7.416m-3.918 6.295c.359-2.08 1.739-3.597 3.917-3.597 2.151 0 3.447 1.518 3.78 3.597zM55.153 12l-1.04 1.834 1.04 1.835h2.078l1.04-1.835L57.231 12zM17.607 17.763v.003l-.004-.003-5.714 9.587-.028-9.587H8.584v.003l-.004-.003-5.692 9.552-.018-.56.028-8.992H0v14.5h2.897c.177-.31.621-1.066 1.191-2.037l4.932-8.277v10.314h2.87q0-.003.002-.005l.006.005 6.115-10.262v10.262h2.869v-14.5zM121.182 27.594l-.661.603a6.8 6.8 0 0 1-1.814 1.211c-.601.265-1.339.4-2.193.4a4.4 4.4 0 0 1-2.155-.552 4.2 4.2 0 0 1-1.607-1.563 4.26 4.26 0 0 1-.595-1.94q.934.292 1.774.492c.902.214 1.841.322 2.789.322.913 0 1.793-.153 2.613-.455.861-.316 1.574-.789 2.118-1.406.592-.67.892-1.49.892-2.43 0-.893-.26-1.71-.775-2.43-.495-.695-1.183-1.241-2.044-1.623a6.7 6.7 0 0 0-2.727-.554c-1.177 0-2.322.302-3.405.898-1.091.6-1.999 1.493-2.697 2.651-.703 1.165-1.058 2.566-1.058 4.162 0 1.431.342 2.693 1.018 3.75a6.56 6.56 0 0 0 2.64 2.388 7.5 7.5 0 0 0 3.374.79c1.105 0 2.109-.205 2.983-.61.839-.39 1.658-.94 2.434-1.637l.588-.528zm-8.709-4.253c.176-.515.428-.976.75-1.374a4.8 4.8 0 0 1 1.659-1.338 4.4 4.4 0 0 1 1.913-.454c.958 0 1.731.217 2.3.644.504.378.739.843.739 1.46 0 .354-.088.81-.771 1.209-.663.384-1.452.58-2.343.58-1.286-.002-2.711-.245-4.247-.727M49.412 13.633h-2.868v4.102h-3.652v2.557h3.652v11.942h2.868V20.292h3.67v-2.557h-3.67zM88.626 17.735h-.17v14.5h2.896V20.272h4.932v-2.557h-7.658z" fill="currentColor"/> </svg>

# Git Fundamentals and Commands Skills Application

___

### Access and Credentials

| Item | Detail |
| :--- | :--- |
| User |+++@lab.VirtualMachine(desktop1).Username+++| 
| Password |+++@lab.VirtualMachine(desktop1).Password+++| 

___

## Challenge Tasks

### Task 1: Git Repository Setup and Configuration
Initialize a new Git repository and configure it with proper user settings and understand the basic Git workflow.

**Requirements:**
1. Create a new directory called `git-fundamentals-project` in your home directory
2. Navigate into the directory and initialize a new Git repository
3. Configure Git with your name and email address (use test values)
4. Create a `.gitignore` file that ignores common temporary files (*.tmp, *.log, .DS_Store)
5. Create an initial `README.md` file with a project description
6. Stage and commit the initial files with a descriptive commit message
7. Check the repository status and commit history
8. Document all commands used in `git-setup-log.txt`

### Task 2: Working with Git States and Basic Commands
Demonstrate understanding of Git's three states (working directory, staging area, repository) through practical file operations.

**Requirements:**
1. Create three new files: `main.py`, `utils.py`, and `config.json`
2. Add some content to each file
3. Use `git status` to check the current state
4. Add only `main.py` to the staging area
5. Check status again to see the difference
6. Modify `main.py` after staging it
7. Use `git diff` to see the differences between working directory and staging area
8. Use `git diff --cached` to see differences between staging area and repository
9. Stage all files and commit them with a meaningful message
10. Document the different states and commands in `git-states-explanation.txt`

### Task 3: Git History and Log Management
Explore Git's history features and understand how to navigate and analyze commit history.

**Requirements:**
1. Make at least 3 more commits by modifying different files
2. Each commit should have a clear, descriptive message
3. Use `git log` to view the commit history
4. Use `git log --oneline` to see a condensed history
5. Use `git log --graph --oneline` to see a graphical representation
6. Use `git show <commit-hash>` to examine a specific commit
7. Save the complete log output to `commit-history.txt`
8. Create a file called `git-log-analysis.txt` explaining what each log command shows
9. Use `git log --author="YourName"` to filter commits by author
10. Document your findings about different log formats and options

### Task 4: Basic Branching and Repository Management
Create and work with Git branches to understand non-linear development workflows.

**Requirements:**
1. Create a new branch called `feature-development`
2. Switch to the new branch and verify you're on it
3. Create a new file called `feature.py` and add some content
4. Commit the new file on the feature branch
5. Switch back to the main branch and verify the file doesn't exist there
6. Create another branch called `bugfix` from main
7. Switch to bugfix branch and modify an existing file
8. Commit the changes on the bugfix branch
9. Switch back to main and merge the bugfix branch
10. List all branches and show which branch you're currently on
11. Document the branching workflow in `branching-workflow.txt`
12. Create a summary of all Git commands learned in `git-commands-summary.txt`

### Task 5: Git Best Practices and Workflow
Demonstrate understanding of Git best practices and create a complete project workflow.

**Requirements:**
1. Create a `development` branch for ongoing work
2. Make several commits on the development branch with good commit messages
3. Use `git commit --amend` to modify the last commit message
4. Create a `docs` folder with documentation files
5. Use `git add .` and `git add -A` to understand the difference
6. Practice using `git reset` to unstage files (without losing changes)
7. Use `git checkout` to discard changes in working directory
8. Create a comprehensive `git-workflow-guide.txt` that explains:
   - When to use different Git commands
   - Best practices for commit messages
   - When and how to use branches
   - Common Git workflows
9. Demonstrate understanding by creating a clean commit history
10. Save final repository state and verify everything is properly committed

@lab.Activity(CFU2) 