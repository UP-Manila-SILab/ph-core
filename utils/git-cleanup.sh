#!/bin/bash

# Step 1: Prune remote-tracking branches
echo "Pruning remote-tracking branches..."
git fetch --prune

# Step 2: Delete local branches whose upstream is gone
echo "Deleting local branches with no upstream..."
for branch in $(git branch -vv | awk '/: gone]/{print $1}'); do
  echo "Deleting local branch: $branch"
  git branch -D "$branch"
done

echo "Cleanup complete!"
