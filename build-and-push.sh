#!/bin/bash
set -euo pipefail

if [[ ! -d "$1" || ! -d "$1/manifests" ]]; then
  echo "Err: must provide a folder which contains a valid package folder under ./manifests"
  exit 1
fi

TAG="$(yq -r '.repo + ":" + .tag' "$1/meta.yaml")"

echo "Building and pushing package image with tag '$TAG'."
kubectl package build "$1/manifests" --tag "$TAG" --push
