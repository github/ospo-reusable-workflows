# Reusable Workflows

This is a placeholder repo for multiple GitHub Actions we use in open source projects.

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

> [!NOTE]
> The container image generated in this repo is a placeholder, it contains the files of this repository to ensure it shows "change" and a new container image digest is generated. This allows us to see tagging of the new container image is working and newly generated attestation is related to a new SHA/digest in the [packages view](https://github.com/github/ospo-reusable-workflows/pkgs/container/ospo-reusable-workflows).
