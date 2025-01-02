# Conventional Releases GitHub Action Composite

This is a composite action that uses multiple GitHub Actions to help with release automation.

The chain consists of the following possibilities:

- Enforce pull request titles use conventional commits notation.
- Auto labeling based on the PR title.
- Automatic releases and notes generation using labels.

## Secrets

The following inputs should be provided via secrets either from your repository or organization:

```yaml
release-discussion-repository-id: ${{ secrets.RELEASE_DISCUSSION_REPOSITORY_ID }}
release-discussion-category-id: ${{ secrets.RELEASE_DISCUSSION_CATEGORY_ID }}
github-token: ${{ secrets.GITHUB_TOKEN }}
```

## Example Usage

```yaml
name: Release
name: conventional release

on:
  workflow_dispatch:
  push:
    branches:
      - main
  pull_request:
    branches:
      - "*"

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Check out code
        uses: actions/checkout@v2

      - name: Conventional Release Action
        uses: jmeridth/conventional-releases-action@main
        with:
          enforce-conventional-commits-pr-title: true
          release-drafter-config-name: release-drafter.yml
          publish-release: true
          create-release-image: true
          dockerfile-path: Dockerfile
          release-image-registry: ghcri.io
          release-image-registry-username: ${{ github.actor }}
          release-image-registry-password: ${{ secrets.GITHUB_TOKEN }}
          release-image-name: jmeridth/conventional-releases
          create-release-discussion: true
          release-discussion-repository-id: ${{ secrets.RELEASE_DISCUSSION_REPOSITORY_ID }}
          release-discussion-category-id: ${{ secrets.RELEASE_DISCUSSION_CATEGORY_ID }}
          github-token: ${{ secrets.GITHUB_TOKEN }}
```
