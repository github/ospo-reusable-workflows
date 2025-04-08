# Major Version Updater

## Inputs

```yaml
- uses: github/ospo-reusable-workflows/.github/workflows/major-version-updater.yml@main
  permissions:
    contents: write
  with:
    # Tag name that the major tag will point to (e.g. v1.2.3)
    tag-name: v1.2.3
  secrets:
    # The GitHub token to use
    github-token: ${{ secrets.GITHUB_TOKEN }}
```

## Outputs

None
