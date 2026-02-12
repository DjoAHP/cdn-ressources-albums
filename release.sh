#!/bin/bash

# Récupère le dernier tag
LAST_TAG=$(git describe --tags --abbrev=0 2>/dev/null)

# Si aucun tag existe
if [ -z "$LAST_TAG" ]; then
  NEW_TAG="v1.0.0"
else
  # Découpe la version vX.Y.Z
  VERSION=${LAST_TAG#v}
  IFS='.' read -r MAJOR MINOR PATCH <<< "$VERSION"

  # Incrémente le PATCH
  PATCH=$((PATCH + 1))

  NEW_TAG="v$MAJOR.$MINOR.$PATCH"
fi

echo "Nouvelle version: $NEW_TAG"

# Git workflow
git add .
git commit -m "Release $NEW_TAG"
git tag "$NEW_TAG"
git push
git push --tags

echo "✅ Release terminée : $NEW_TAG"
