# PR Title Reusable Workflow

## Inputs

```yaml
- uses: jmeridth/reusable-workflows/.github/workflows/pr-title.yml@main
  with:
    # Configure which types are allowed (newline-delimited).
    # From: https://github.com/commitizen/conventional-commit-types/blob/master/index.json
    # listing all below
    types: |
      build
      chore
      ci
      docs
      feat
      fix
      perf
      refactor
      revert
      style
      test
    scopes: |
      ci
      docs
    requireScope: true
  secrets:
    # The GitHub token to use
    github-token: ${{ secrets.GITHUB_TOKEN }}
```

## Outputs

None
