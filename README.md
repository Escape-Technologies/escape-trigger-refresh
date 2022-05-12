# Escape github actions

Each new deployment can introduce new vulnerabilities.
To be able to detect them, we need to scan the endpoint with [escape](https://escape.tech/) after the deployment.

## Setup your environment

You need two environment variables to setup the scanner:

- `ESCAPE_ENVIRONMENT_ID`: Your app id, get it on your app page.
- `ESCAPE_API_KEY`: Your api key, get it on the [profile page](https://app.escape.tech/profile).

You can modify secrets on `settings > secrets > actions`

## Exemple usage

``` yaml
---
on: push
jobs:
  Escape:
    runs-on: ubuntu-latest
    steps:
      - name: Trigger refresh
        uses: Escape-Technologies/escape-trigger-refresh@v2
        with:
          environment_id: ${{ secrets.ESCAPE_ENVIRONMENT_ID }}
          api_key: ${{ secrets.ESCAPE_API_KEY }}
```
