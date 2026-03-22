# runtimeConfig

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeConfig records via agentic-db CLI

## Usage

```bash
agentic-db runtime-config list
agentic-db runtime-config get --id <UUID>
agentic-db runtime-config create --entityId <UUID> --key <String> [--value <JSON>] [--description <String>] [--isSecret <Boolean>]
agentic-db runtime-config update --id <UUID> [--entityId <UUID>] [--key <String>] [--value <JSON>] [--description <String>] [--isSecret <Boolean>]
agentic-db runtime-config delete --id <UUID>
```

## Examples

### List all runtimeConfig records

```bash
agentic-db runtime-config list
```

### Create a runtimeConfig

```bash
agentic-db runtime-config create --entityId <UUID> --key <String> [--value <JSON>] [--description <String>] [--isSecret <Boolean>]
```

### Get a runtimeConfig by id

```bash
agentic-db runtime-config get --id <value>
```
