# Labeler Reusable Workflow

## Inputs

```yaml
- uses: github/ospo-reusable-workflows/.github/workflows/labeler.yml@main
  permissions:
    contents: read
    pull-requests: write
  with:
    # The name of the configuration file to use, default is labeler.yml
    # from the actions/labeler GitHub Action
    # Yaml file must end in .yml
    config-path: labeler.yml
  secrets:
    # The GitHub token to use
    github-token: ${{ secrets.github-token }}
```

## Outputs

None
