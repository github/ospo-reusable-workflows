# Reusable Workflows

This is a placeholder repo for multiple GitHub Actions I use in my personal and open source projects.

## Reusable Workflows Available

- [Labeler](docs/labeler.md)
- [Auto-Labeler](docs/auto-labeler.md)
- [PR Title](docs/pr-title.md)
- [Release](docs/release.md)
- [Release Image](docs/release-image.md)
- [Release Discussion](docs/release-discussion.md)

> [!CAUTION]
> Check the permissions in each reusable workflow to ensure the GitHub token you pass from your calling workflow meets the required permissions. Most of the time just passing `${{ secrets.GITHUB_TOKEN }}` is sufficient.
> This may require you to go to your repository settings and then Actions to `Actions Permission` and enable reusable workflows. You may also need to update `Workflow Permissions` to `Read and write permissions`.
>
> [Workflows](.github/workflows)

> [!TIP]
> You can reuse the following files in this repository in your own as they are used by the reusable workflows:
>
> - [labeler.yml](.github/labeler.yml)
> - [release-drafter.yaml](.github/release-drafter.yaml)

> [!WARNING]  
> The container image generated in this repo is a placeholder, it contains no content. It uses [alpine:latest and says "Hello World"](https://github.com/jmeridth/reusable-workflows/blob/main/Dockerfile). The image creation option is for GitHub Actions who need it because their Action is not written in JavaScript/Typescript and they want to track downloads/usage.

Blah blah blah
