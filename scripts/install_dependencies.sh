#!/bin/bash
echo "Installing dependencies..."

APP_DIR="/home/ec2-user/flask-app"

if [ -d "$APP_DIR" ]; then
  cd "$APP_DIR"
else
  echo "❌ Directory $APP_DIR does not exist!"
  exit 1
fi

# Install pip3 for Amazon Linux 2023
if ! command -v pip3 &> /dev/null; then
    echo "pip3 not found, installing..."
    sudo yum update -y
    sudo yum install -y python3-pip
fi

pip3 install -r requirements.txt
