# Labeler Reusable Workflow

## Inputs

```yaml
- uses: jmeridth/reusable-workflows/.github/workflows/labeler.yml@main
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
