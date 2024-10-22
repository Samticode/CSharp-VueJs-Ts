#!/bin/bash

kill -9 $(lsof -t -i :5101)

clear

echo "Starting .NET Backend..."
cd ./MyBackend
dotnet run --urls "http://localhost:5101" &

echo "Starting Vue.js Frontend..."
cd ../myFrontend
npm run dev -- --port 5174 &

# Keep the terminal open
wait