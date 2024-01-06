#!/bin/bash

# NOTE: This script is not ran by default for the template docker image.
#       If you use a custom base image you can add your required system dependencies here.

set -e # Stop script on error
apt-get update && apt-get upgrade -y # Update System

# Install System Dependencies
apt-get install -y --no-install-recommends ffmpeg && rm -rf /var/lib/apt/lists/*

# pip3 install torch torchaudio --extra-index-url https://download.pytorch.org/whl/cu118
# rm -rf /root/.cache/pip

# Clean up, remove unnecessary packages and help reduce image size
apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*
