# Reusable Workflows

This is a placeholder repo for multiple GitHub Actions I use in my personal and open source projects.

Check the permissions in each reusable workflow to ensure the GITHUB_TOKEN you pass from your calling workflow meets the required permissions.

## Workflows

- [Release](.github/workflows/release.yml): Create a release with the tag name and release notes. There are few other options (keep release as draft, release image, etc.) that you can configure.
- [PR Title](.github/workflows/pr-title.yml): Enforce PR title format. Utilizes [conventional commits](https://github.com/commitizen/conventional-commit-types/blob/master/index.json) format.
