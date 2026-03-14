# Context Management

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

Manage API endpoint contexts for agent-db

## Usage

```bash
agent-db context create <name> --endpoint <url>
agent-db context list
agent-db context use <name>
agent-db context current
agent-db context delete <name>
```

## Examples

### Create and activate a context

```bash
agent-db context create production --endpoint https://api.example.com/graphql
agent-db context use production
```

### List all contexts

```bash
agent-db context list
```
