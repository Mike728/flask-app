#!/bin/bash
echo "Installing dependencies..."

APP_DIR="/home/ec2-user/flask-app"

if [ -d "$APP_DIR" ]; then
  cd "$APP_DIR"
else
  echo "❌ Directory $APP_DIR does not exist!"
  exit 1
fi

if ! command -v pip3 &> /dev/null; then
    echo "Installing pip3..."
    sudo yum update -y
    sudo yum install -y python3
fi

pip3 install -r requirements.txt
