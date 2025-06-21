#!/bin/bash

echo "🏗️ Building frontend..."
cd ecom-frontend
npm install
npm run build

echo "📦 Copying frontend to backend static/ folder..."
rm -rf ../ecom-proj/src/main/resources/static/*
cp -r dist/* ../ecom-proj/src/main/resources/static/

echo "⚙️ Building Spring Boot JAR..."
cd ../ecom-proj
./mvnw clean package -DskipTests
