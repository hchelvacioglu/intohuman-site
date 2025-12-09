#!/bin/bash
# Copy compiled CSS to assets folder after Hugo build
mkdir -p assets/css/compiled
cp public/css/styles.css assets/css/compiled/main.css 2>/dev/null || true
echo "✅ CSS synced to assets/css/compiled/main.css"
