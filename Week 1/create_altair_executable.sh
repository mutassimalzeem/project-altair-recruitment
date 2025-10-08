#!/bin/bash

TARGET_DIR="/project/altair_software_recruitment/executables"


echo "Creating directory: $TARGET_DIR"
mkdir -p $TARGET_DIR


echo "Creating Python file..."
cat <<EOF > $TARGET_DIR/hello.py
#!/usr/bin/env python3
print("Hello Altair!")
EOF


echo "Setting owner to root..."
chown root:root $TARGET_DIR/hello.py


echo "Setting permissions..."
chmod 700 $TARGET_DIR/hello.py

echo "----------------------------------------"
echo "Task complete. Files are located in $TARGET_DIR"
