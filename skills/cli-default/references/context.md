# Context Management

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

Manage API endpoint contexts for agent-os

## Usage

```bash
agent-os context create <name> --endpoint <url>
agent-os context list
agent-os context use <name>
agent-os context current
agent-os context delete <name>
```

## Examples

### Create and activate a context

```bash
agent-os context create production --endpoint https://api.example.com/graphql
agent-os context use production
```

### List all contexts

```bash
agent-os context list
```
