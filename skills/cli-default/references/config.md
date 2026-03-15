# Config Variables

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

Manage per-context key-value configuration variables for agent-db

## Usage

```bash
agent-db config get <key>
agent-db config set <key> <value>
agent-db config list
agent-db config delete <key>
```

## Examples

### Store and retrieve a config variable

```bash
agent-db config set orgId abc-123
agent-db config get orgId
```

### List all config variables

```bash
agent-db config list
```
