# Release Reusable Workflow

## Inputs

```yaml
- uses: github/ospo-reusable-workflows/.github/workflows/release.yml@main
  permissions:
    contents: write
    pull-requests: read
  with:
    # Boolean flag whether to publish the release, default is true
    publish: true
    # The name of the configuration file to use, default is release-drafter.yml
    # from the release-drafter/release-drafter GitHub Action
    release-config-name: release-drafter.yml
  secrets:
    # The GitHub token to use
    github-token: ${{ secrets.GITHUB_TOKEN }}
```

## Outputs

- full-tag: The full tag of the release (v1.0.0)
- short-tag: The short tag of the release (v1)
- body: The body of the release, to be used in the GitHub release UI

```yaml
jobs:
  release:
  other_job:
    needs: release
    env:
      FULL_TAG: ${{ needs.release.outputs.full-tag }}
      SHORT_TAG: ${{ needs.release.outputs.short-tag }}
      BODY: ${{ needs.release.outputs.body }}
```
