#!/bin/bash

echo "🚀 Building frontend..."
cd ecom-frontend
npm install
npm run build

echo "📦 Moving frontend to Spring Boot static folder..."
rm -rf ../ecom-proj/src/main/resources/static/*
cp -r dist/* ../ecom-proj/src/main/resources/static/

echo "⚙️ Building Spring Boot backend..."
cd ../ecom-proj
./mvnw clean package -DskipTests
