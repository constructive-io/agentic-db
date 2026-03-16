# Config Variables

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

Manage per-context key-value configuration variables for agentic-db

## Usage

```bash
agentic-db config get <key>
agentic-db config set <key> <value>
agentic-db config list
agentic-db config delete <key>
```

## Examples

### Store and retrieve a config variable

```bash
agentic-db config set orgId abc-123
agentic-db config get orgId
```

### List all config variables

```bash
agentic-db config list
```
