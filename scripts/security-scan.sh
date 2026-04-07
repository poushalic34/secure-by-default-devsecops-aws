#!/bin/bash

echo "Running dependency audit..."
npm audit --audit-level=high

if [ $? -ne 0 ]; then
  echo "High/Critical vulnerabilities found. Failing build."
  exit 1
fi

echo "Checking for hardcoded secrets..."
grep -r "AWS_SECRET" . && {
  echo "Potential secret found!"
  exit 1
}

echo "Security checks passed"
