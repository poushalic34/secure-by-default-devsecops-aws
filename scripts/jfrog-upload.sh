#!/bin/bash
echo "Setting up JFrog CLI..."
curl -fL https://getcli.jfrog.io | sh
# Configure using environment variables
./jfrog config add my-server \
  --url=$JFROG_URL \
  --access-token=$JFROG_TOKEN \
  --interactive=false
echo "Uploading artifact to Artifactory..."
./jfrog rt upload "app/*" demo-repo/
echo "Triggering Xray scan..."
./jfrog xr scan demo-repo/
