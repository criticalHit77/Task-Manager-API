#!/bin/bash

# Base URL
BASE_URL="http://localhost:8080/api/tasks"

echo "1. Creating a new task..."
curl -X POST $BASE_URL \
  -H "Content-Type: application/json" \
  -d '{
    "title": "Learn Spring Boot",
    "description": "Build a REST API with H2 database",
    "status": "PENDING",
    "dueDate": "2024-12-31T23:59:59"
  }'
echo -e "\n"

echo "2. Getting all tasks..."
curl -X GET $BASE_URL
echo -e "\n"

echo "3. Creating another task..."
curl -X POST $BASE_URL \
  -H "Content-Type: application/json" \
  -d '{
    "title": "Test API",
    "description": "Verify all endpoints work",
    "status": "IN_PROGRESS",
    "dueDate": "2024-11-30T12:00:00"
  }'
echo -e "\n"

echo "4. Getting task by ID (ID: 1)..."
curl -X GET $BASE_URL/1
echo -e "\n"

echo "5. Updating task (ID: 1)..."
curl -X PUT $BASE_URL/1 \
  -H "Content-Type: application/json" \
  -d '{
    "title": "Learn Spring Boot - Advanced",
    "description": "Mastered basics, moving to advanced topics",
    "status": "IN_PROGRESS",
    "dueDate": "2025-01-15T10:00:00"
  }'
echo -e "\n"

echo "6. Getting tasks by status (IN_PROGRESS)..."
curl -X GET $BASE_URL/status/IN_PROGRESS
echo -e "\n"

echo "7. Deleting task (ID: 2)..."
curl -X DELETE $BASE_URL/2
echo -e "\n"

echo "8. Final list of tasks..."
curl -X GET $BASE_URL
echo -e "\n"
