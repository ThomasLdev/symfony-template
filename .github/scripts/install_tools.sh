#!/bin/bash

# Navigate to the tools directory
cd tools

# Iterate over each subdirectory in the tools directory
for dir in */ ; do
    # Check if a composer.json file exists in the subdirectory
    if [[ -f "$dir/composer.json" ]]; then
        echo "Installing dependencies for $dir"
        # Navigate into the directory
        cd "$dir"
        # Run composer install
        composer install
        # Navigate back to the tools directory
        cd ..
    fi
done
