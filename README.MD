## MR-Linter Github Actions

Github Action for validating your pull requests.

Main repository: https://github.com/ArtARTs36/php-merge-request-linter

## Usage

Implementation example: https://github.com/ArtARTs36/ShellCommand/pull/11

1. Add config file with name `.mr-linter.yml` or `.mr-linter.json`. Examples:
* https://github.com/ArtARTs36/php-merge-request-linter/blob/master/stubs/.mr-linter.yaml
* https://github.com/ArtARTs36/php-merge-request-linter/blob/master/stubs/.mr-linter.json

2. Add new workflow file .github/workflows/review.yml with content

```yaml
name: PR Review

on:
  pull_request:
    branches: [ master ]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2

      - name: Lint Pull Request
        uses: mr-linter/mr-linter-ga@v0.2.0
        env:
          MR_LINTER_HTTP_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|  INPUT  |  TYPE  | REQUIRED |  DEFAULT  |          DESCRIPTION          |
|---------|--------|----------|-----------|-------------------------------|
| config  | string |  false   |           |  Path to configuration file   |
|  debug  | string |  false   | `"false"` | Run MR-Linter with debug mode |
| metrics | string |  false   | `"false"` |      Print full metrics       |

<!-- AUTO-DOC-INPUT:END -->
