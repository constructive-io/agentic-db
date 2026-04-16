# runtimeEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeEvent records via agentic-db CLI

## Usage

```bash
agentic-db runtime-event list
agentic-db runtime-event list --where.<field>.<op> <value> --orderBy <values>
agentic-db runtime-event list --limit 10 --after <cursor>
agentic-db runtime-event find-first --where.<field>.<op> <value>
agentic-db runtime-event get --id <UUID>
agentic-db runtime-event create --eventType <String> --payload <JSON> [--source <String>] [--processedAt <Datetime>] [--status <String>]
agentic-db runtime-event update --id <UUID> [--eventType <String>] [--payload <JSON>] [--source <String>] [--processedAt <Datetime>] [--status <String>]
agentic-db runtime-event delete --id <UUID>
```

## Examples

### List runtimeEvent records

```bash
agentic-db runtime-event list
```

### List runtimeEvent records with pagination

```bash
agentic-db runtime-event list --limit 10 --offset 0
```

### List runtimeEvent records with cursor pagination

```bash
agentic-db runtime-event list --limit 10 --after <cursor>
```

### Find first matching runtimeEvent

```bash
agentic-db runtime-event find-first --where.id.equalTo <value>
```

### List runtimeEvent records with field selection

```bash
agentic-db runtime-event list --select id,id
```

### List runtimeEvent records with filtering and ordering

```bash
agentic-db runtime-event list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a runtimeEvent

```bash
agentic-db runtime-event create --eventType <String> --payload <JSON> [--source <String>] [--processedAt <Datetime>] [--status <String>]
```

### Get a runtimeEvent by id

```bash
agentic-db runtime-event get --id <value>
```
