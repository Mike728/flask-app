#!/bin/bash
echo "Installing dependencies..."

APP_DIR="/home/ec2-user/flask-app"

if [ -d "$APP_DIR" ]; then
  echo "✅ Directory exists: $APP_DIR"
  cd "$APP_DIR"
else
  echo "❌ Directory $APP_DIR does not exist!"
  exit 1
fi

echo "📁 Contents of $APP_DIR:"
ls -al

echo "🔍 Checking if requirements.txt exists:"
if [ ! -f "requirements.txt" ]; then
  echo "❌ requirements.txt is missing!"
  exit 1
fi

echo "📦 Installing pip requirements..."
pip3 install -r requirements.txt
