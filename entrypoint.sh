#!/bin/bash

set -e

PROJECT_KEY="$1"
ORGANIZATION="$2"
HOST_URL="$3"
LOGIN_TOKEN="$4"
PROJECT_PATH="$5"

cd "$PROJECT_PATH"

echo "Running SonarQube analysis for project ${PROJECT_KEY}..."
mvn sonar:sonar \
  -Dsonar.projectKey="$PROJECT_KEY" \
  -Dsonar.organization="$ORGANIZATION" \
  -Dsonar.host.url="$HOST_URL" \
  -Dsonar.login="$LOGIN_TOKEN"
