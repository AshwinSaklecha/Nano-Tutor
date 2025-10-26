#!/bin/bash

# Build script for Chrome extension
echo "Building Chrome extension..."

# Build the React app
npm run build

# Copy manifest and icons to dist
cp public/manifest.json dist/
cp -r public/icons dist/

# Update manifest to point to index.html
sed -i 's/"default_popup": "popup.html"/"default_popup": "index.html"/' dist/manifest.json

echo "Build complete! Load the 'dist' folder as an unpacked extension in Chrome."
