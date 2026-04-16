# runtimeConfig

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeConfig records via agentic-db CLI

## Usage

```bash
agentic-db runtime-config list
agentic-db runtime-config list --where.<field>.<op> <value> --orderBy <values>
agentic-db runtime-config list --limit 10 --after <cursor>
agentic-db runtime-config find-first --where.<field>.<op> <value>
agentic-db runtime-config get --id <UUID>
agentic-db runtime-config create --key <String> [--value <JSON>] [--description <String>] [--isSecret <Boolean>]
agentic-db runtime-config update --id <UUID> [--key <String>] [--value <JSON>] [--description <String>] [--isSecret <Boolean>]
agentic-db runtime-config delete --id <UUID>
```

## Examples

### List runtimeConfig records

```bash
agentic-db runtime-config list
```

### List runtimeConfig records with pagination

```bash
agentic-db runtime-config list --limit 10 --offset 0
```

### List runtimeConfig records with cursor pagination

```bash
agentic-db runtime-config list --limit 10 --after <cursor>
```

### Find first matching runtimeConfig

```bash
agentic-db runtime-config find-first --where.id.equalTo <value>
```

### List runtimeConfig records with field selection

```bash
agentic-db runtime-config list --select id,id
```

### List runtimeConfig records with filtering and ordering

```bash
agentic-db runtime-config list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a runtimeConfig

```bash
agentic-db runtime-config create --key <String> [--value <JSON>] [--description <String>] [--isSecret <Boolean>]
```

### Get a runtimeConfig by id

```bash
agentic-db runtime-config get --id <value>
```
