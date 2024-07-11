#!/bin/bash

# Define an array of filenames
files=("mongo-configmap.yml" "mongo-secret.yml" "mongo.yml" "mongo-express.yml")

# Loop through the array and apply each file
for file in "${files[@]}"
do
  kubectl delete -f $file
done

# Print a message indicating completion
echo "All services are deleted"