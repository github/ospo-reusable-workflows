# Auto-labeler Reusable Workflow

## Inputs

```yaml
- uses: github/ospo-reusable-workflows/.github/workflows/auto-labeler.yml@main
  permissions:
    contents: read
    pull-requests: write
  with:
    # The name of the configuration file to use, default is release-drafter.yml
    # from the release-drafter/release-drafter GitHub Action
    config-name: release-drafter.yml
  secrets:
    # The GitHub token to use
    github-token: ${{ secrets.GITHUB_TOKEN }}
```

## Outputs

None
