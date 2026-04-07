# Secure by Default: DevSecOps Pipeline on AWS + JFrog

## Overview
This project demonstrates a secure-by-default CI/CD pipeline using:

- AWS CodePipeline
- AWS CodeBuild
- AWS IAM
- AWS Secrets Manager
- JFrog Artifactory & Xray

## Pipeline Stages

1. Source (GitHub)
2. Build & Test
3. Security Scan (Shift-left)
4. Artifact Upload (JFrog)
5. Policy Enforcement

## Security Features

- Dependency scanning (npm audit)
- Secret detection
- IAM-based access control
- Secrets stored in AWS Secrets Manager
- JFrog Xray integration

## Demo Flow

- Push vulnerable code → pipeline fails
- Fix dependency → pipeline passes
- Artifact uploaded to JFrog

## Key Idea

Security is enforced automatically with zero developer friction.
