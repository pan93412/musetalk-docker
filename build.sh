#!/usr/bin/env bash

set -eu

echo "Building base image..."
docker build -t pan93412/musetalk:1.5-base -f Dockerfile.base .

echo "Building application image..."
docker build -t pan93412/musetalk:1.5 -f Dockerfile .
