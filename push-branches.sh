#!/bin/bash
# Script to push both main and study branches to remote

echo "================================================"
echo "Branch Reorganization - Push Script"
echo "================================================"
echo ""

cd "$(dirname "$0")"

echo "Current branches:"
git branch -a
echo ""

echo "Pushing main branch..."
git push origin main
if [ $? -eq 0 ]; then
    echo "✓ Main branch pushed successfully"
else
    echo "✗ Failed to push main branch"
fi
echo ""

echo "Pushing study branch..."
git push origin study
if [ $? -eq 0 ]; then
    echo "✓ Study branch pushed successfully"
else
    echo "✗ Failed to push study branch"
fi
echo ""

echo "================================================"
echo "Branch Summary:"
echo "================================================"
echo "main branch  - Contains Baisheng shop + original content"
echo "study branch - Contains original learning content only"
echo ""
echo "Done!"
