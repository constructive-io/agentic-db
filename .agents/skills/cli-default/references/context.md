# Context Management

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

Manage API endpoint contexts for agentic-db

## Usage

```bash
agentic-db context create <name> --endpoint <url>
agentic-db context list
agentic-db context use <name>
agentic-db context current
agentic-db context delete <name>
```

## Examples

### Create and activate a context

```bash
agentic-db context create production --endpoint https://api.example.com/graphql
agentic-db context use production
```

### List all contexts

```bash
agentic-db context list
```
