#!/bin/bash

echo " Top 5 Memory Intensive Processes on Your System:"
echo "================================================="
ps aux --sort=%mem | head -n 6


