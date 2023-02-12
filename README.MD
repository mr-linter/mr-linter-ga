## MR-Linter Github Actions

Github Action for validating your pull requests.

## Usage

Add this lines to your workflow.yml

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Lint Pull Request
        uses: mr-linter/mr-linter-ga@v0.1.0
```

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|  INPUT  |  TYPE  | REQUIRED |  DEFAULT  |          DESCRIPTION          |
|---------|--------|----------|-----------|-------------------------------|
| config  | string |  false   |           |  Path to configuration file   |
|  debug  | string |  false   | `"false"` | Run MR-Linter with debug mode |
| metrics | string |  false   | `"false"` |      Print full metrics       |

<!-- AUTO-DOC-INPUT:END -->
