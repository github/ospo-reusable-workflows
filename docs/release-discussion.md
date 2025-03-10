# Release Discussion Reusable Workflow

## Inputs

```yaml
- uses: github/ospo-reusable-workflows/.github/workflows/release.yml@main
  permissions:
    contents: read
    discussions: write
  with:
    # Full tag of the image, usually the version (v1.0.0)
    full-tag: v1.0.0
    # The body of the release, to be used in the GitHub release UI
    body: |
      This is a release of the ${{ github.repository }} image.
      The full tag is ${{ inputs.full-tag }}.
      The short tag is ${{ inputs.short-tag }}.
  secrets:
    # The GitHub token to use
    github-token: ${{ secrets.GITHUB_TOKEN }}
    # Discussion Repository ID
    discussion-repository-id: ${{ secrets.DISCUSSION_REPOSITORY_ID }}
    # Discussion Category ID
    discussion-category-id: ${{ secrets.DISCUSSION_CATEGORY_ID }}
```

## Outputs

None
