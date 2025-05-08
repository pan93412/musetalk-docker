#!/usr/bin/env bash

set -eu

echo "Building base image..."
docker buildx build --platform linux/amd64 -t pan93412/musetalk-docker:1.5-base -f Dockerfile.base .

echo "Building application image..."
docker buildx build --platform linux/amd64 -t pan93412/musetalk-docker:1.5-gradio -f Dockerfile .
