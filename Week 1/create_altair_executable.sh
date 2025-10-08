#!/bin/bash

# Define the target directory inside our mapped volume
TARGET_DIR="/project/altair_software_recruitment/executables"

# 1. Create the directory structure within the /project folder.
echo "Creating directory: $TARGET_DIR"
mkdir -p $TARGET_DIR

# 2. Create the Python file in the target directory.
echo "Creating Python file..."
cat <<EOF > $TARGET_DIR/hello.py
#!/usr/bin/env python3
print("Hello Altair!")
EOF

# 3. Change the file's owner to 'root'.
echo "Setting owner to root..."
chown root:root $TARGET_DIR/hello.py

# 4. Set permissions so only root can execute it.
echo "Setting permissions..."
chmod 700 $TARGET_DIR/hello.py

echo "----------------------------------------"
echo "Task complete. Files are located in $TARGET_DIR"
