#!/bin/bash

echo "✅ Skipping manual Java install (Render has Java built-in)"

# 📦 Build frontend
cd ecom-frontend
npm install
npm run build

# 📁 Copy frontend build to backend
cd ..
cp -r ecom-frontend/dist/* ecom-proj/src/main/resources/static/

# ⚙️ Build Spring Boot JAR
cd ecom-proj
./mvnw clean package -DskipTests
