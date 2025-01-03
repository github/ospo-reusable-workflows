# Frequently Asked Questions

## How to I get the repository ID to put in my Actions secrets for use with the reusable release workflow?

You can get a repository's ID via the GitHub Rest API endpoint](https://docs.github.com/en/rest/repos/repos?apiVersion=2022-11-28#get-a-repository).  I found using the `gh` CLI tool to be the easiest way to get the repository ID.  You can use the following command to get the repository ID:

change the `OWNER` and `REPO` to the repository you are interested in.

```bash
# GitHub CLI api
# https://cli.github.com/manual/gh_api

gh api \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /repos/OWNER/REPO
```

## How do I get the discussion category ID to put in my Actions secrets for use with the reusable release workflow?

You can get a repository's discussion category ID via the GitHub GraphQL API.  You can use the [GraphQL Explorer UI Tool](https://docs.github.com/en/graphql/overview/explorer) to get the discussion category ID.  You can use the following query to get the discussion category ID:

change the `owner` and `name` to the repository you are interested in.

```graphql
query {
  repository(owner: "jmeridth", name: "reusable-workflows") {
    discussionCategories(first: 10) {
      nodes {
        # type: DiscussionCategory
        id
        name
      }
    }
  }
}
```
