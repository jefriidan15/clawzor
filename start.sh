#!/bin/bash

echo "Starting Clawzor setup..."

chmod +x setup.sh
./setup.sh

echo "Starting OpenClaw gateway..."

clawzor start
