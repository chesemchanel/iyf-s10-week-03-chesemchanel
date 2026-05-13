#!/bin/bash
# Creates a new project with standard structure

PROJECT_NAME=$1

if [ -z "$PROJECT_NAME" ]; then
    echo "Usage: ./new-project.sh project-name"
    exit 1
fi

# Create folder structure
mkdir -p "$PROJECT_NAME"/{src/{css,js,images},docs,tests}

# Create starter files
touch "$PROJECT_NAME"/README.md
touch "$PROJECT_NAME"/src/index.html
touch "$PROJECT_NAME"/src/css/styles.css
touch "$PROJECT_NAME"/src/js/main.js

# Add content to index.html
cat > "$PROJECT_NAME/src/index.html" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$PROJECT_NAME</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <h1>$PROJECT_NAME</h1>
    <script src="js/main.js"></script>
</body>
</html>
EOF

# Add content to README
echo "# $PROJECT_NAME" > "$PROJECT_NAME/README.md"
echo "" >> "$PROJECT_NAME/README.md"
echo "Project created with new-project.sh" >> "$PROJECT_NAME/README.md"

echo "Project $PROJECT_NAME created successfully!"
echo ""
echo "Structure:"
find "$PROJECT_NAME" | sed 's|[^/]*/|  |g'
