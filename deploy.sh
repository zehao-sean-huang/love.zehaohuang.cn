#!/bin/sh

set -e

# Pull the latest code
git pull origin master

# Install new packages
npm install

# Fix potential errors
npm audit fix

# Remove potential changes to package list
git checkout .

# Build into dist directory
npm run build

