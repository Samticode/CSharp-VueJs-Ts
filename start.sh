#!/bin/bash

echo "Starting .NET Backend..."
cd ./MyBackend
dotnet run &

echo "Starting Vue.js Frontend..."
cd ../myFrontend
npm run dev &

# Keep the terminal open
wait
