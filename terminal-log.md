# Terminal Log - Week 03

A record of all terminal commands used during Week 3 tasks.

---

## Lesson 5: Command Line Essentials

### Task 5.1: Navigation

```bash
# List contents of current directory
ls

# Navigate to Documents folder
cd ~/Documents

# Go back one directory
cd ..

# Navigate to home directory
cd ~
```

### Task 5.2: Create Project Structure

```bash
# Create the full project structure in one command
mkdir -p my-project/src/{css,js,images} my-project/docs my-project/tests

# Create README file
touch my-project/README.md

# Verify structure
ls -R my-project/
```

### Task 5.2: File Operations

```bash
# Create a new file
touch index.html

# View file contents
cat index.html

# Copy a file
cp index.html backup.html

# Move a file
mv backup.html docs/

# Rename a file
mv index.html home.html

# Delete a file
rm home.html

# Copy a directory
cp -r src/ src-backup/

# Move a directory
mv src-backup/ archive/

# Delete an empty directory
rmdir archive/

# Delete a directory with contents
rm -rf archive/
```

### Task 5.3: Search and Find Commands

```bash
# Find files by name
find . -name "*.html"

# Find all CSS files in projects folder
find . -name "*.css"

# Find all files modified in the last 7 days
find . -mtime -7

# Search inside files
grep "class" index.html
grep -r "button" ./src/

# Search for the word "flex" in all CSS files
grep -r "flex" --include="*.css" .

# Count occurrences of "div" in HTML files
grep -c "div" index.html

# View first/last lines
head -10 styles.css
tail -10 styles.css

# Count lines, words, characters
wc index.html
wc -l index.html

# Show command history
history
```

### Task 5.4: Shell Script - new-project.sh

```bash
# Make the script executable
chmod +x new-project.sh

# Run the script
./new-project.sh my-app
```

---

## Lesson 6: Git & GitHub Workflow

### Task 6.1: Git Initial Setup

```bash
# Configure identity
git config --global user.name "Chesemchanel"
git config --global user.email "your@email.com"

# Verify configuration
git config --list
```

### Task 6.1: Initialize Repository

```bash
# Navigate to project
cd iyf-s10-week-03-chesemchanel

# Initialize Git
git init

# Check status
git status

# Add files to staging
git add .

# Make first commit
git commit -m "feat: initial project setup"
```

### Task 6.2: Branch Workflow

```bash
# Create a new branch
git branch feature/about-page

# Switch to branch
git switch feature/about-page

# Create and switch in one command
git checkout -b feature/new-header

# Make changes, then commit
git add .
git commit -m "feat: add about page"

# Switch back to main
git checkout main

# Merge the feature branch
git merge feature/about-page

# Delete the merged branch
git branch -d feature/about-page
```

### Task 6.3: Push to GitHub

```bash
# Add remote repository
git remote add origin https://github.com/chesemchanel/iyf-s10-week-03-chesemchanel

# Verify remote
git remote -v

# Push to GitHub
git push -u origin main

# Pull changes
git pull origin main
```

### Day 3 Daily Challenge: Boilerplate Script

```bash
# Run the boilerplate script
./new-project.sh iyf-s10-week-03-chesemchanel
```
