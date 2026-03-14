# Config Variables

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

Manage per-context key-value configuration variables for agent-os

## Usage

```bash
agent-os config get <key>
agent-os config set <key> <value>
agent-os config list
agent-os config delete <key>
```

## Examples

### Store and retrieve a config variable

```bash
agent-os config set orgId abc-123
agent-os config get orgId
```

### List all config variables

```bash
agent-os config list
```
