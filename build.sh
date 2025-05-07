#!/usr/bin/env bash

set -eu

echo "Building base image..."
docker build -t ghcr.io/pan93412/musetalk-docker:1.5-base -f Dockerfile.base .

echo "Building application image..."
docker build -t ghcr.io/pan93412/musetalk-docker:1.5-gradio -f Dockerfile .
