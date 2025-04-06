#!/bin/bash
echo "Stopping Flask app..."
pkill -f app.py || echo "App not running"
