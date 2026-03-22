# runtimeState

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RuntimeState records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db runtime-state list
agentic-db runtime-state get --id <UUID>
agentic-db runtime-state create --entityId <UUID> --name <String> [--stateType <String>] [--status <String>] [--data <JSON>] [--parentId <UUID>] [--startedAt <Datetime>] [--endedAt <Datetime>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db runtime-state update --id <UUID> [--entityId <UUID>] [--name <String>] [--stateType <String>] [--status <String>] [--data <JSON>] [--parentId <UUID>] [--startedAt <Datetime>] [--endedAt <Datetime>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db runtime-state delete --id <UUID>
```

## Examples

### List all runtimeState records

```bash
agentic-db runtime-state list
```

### Create a runtimeState

```bash
agentic-db runtime-state create --entityId <UUID> --name <String> [--stateType <String>] [--status <String>] [--data <JSON>] [--parentId <UUID>] [--startedAt <Datetime>] [--endedAt <Datetime>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a runtimeState by id

```bash
agentic-db runtime-state get --id <value>
```
