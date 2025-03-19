#!/bin/sh

# Start Nginx in the background
nginx &

# Run the initial build
npm run build

# Start watching for changes
nodemon --watch src --ext js,css,html --exec "npm run build && npm start"
