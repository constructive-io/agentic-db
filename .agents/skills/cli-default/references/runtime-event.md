# runtimeEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeEvent records via agentic-db CLI

## Usage

```bash
agentic-db runtime-event list
agentic-db runtime-event get --id <UUID>
agentic-db runtime-event create --entityId <UUID> --eventType <String> --payload <JSON> [--source <String>] [--processedAt <Datetime>] [--status <String>]
agentic-db runtime-event update --id <UUID> [--entityId <UUID>] [--eventType <String>] [--payload <JSON>] [--source <String>] [--processedAt <Datetime>] [--status <String>]
agentic-db runtime-event delete --id <UUID>
```

## Examples

### List all runtimeEvent records

```bash
agentic-db runtime-event list
```

### Create a runtimeEvent

```bash
agentic-db runtime-event create --entityId <UUID> --eventType <String> --payload <JSON> [--source <String>] [--processedAt <Datetime>] [--status <String>]
```

### Get a runtimeEvent by id

```bash
agentic-db runtime-event get --id <value>
```
