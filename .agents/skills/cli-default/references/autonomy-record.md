# autonomyRecord

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AutonomyRecord records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db autonomy-record list
agentic-db autonomy-record get --id <UUID>
agentic-db autonomy-record create --entityId <UUID> --title <String> [--recordType <String>] [--content <String>] [--status <String>] [--priority <Int>] [--source <String>] [--context <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db autonomy-record update --id <UUID> [--entityId <UUID>] [--title <String>] [--recordType <String>] [--content <String>] [--status <String>] [--priority <Int>] [--source <String>] [--context <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db autonomy-record delete --id <UUID>
```

## Examples

### List all autonomyRecord records

```bash
agentic-db autonomy-record list
```

### Create a autonomyRecord

```bash
agentic-db autonomy-record create --entityId <UUID> --title <String> [--recordType <String>] [--content <String>] [--status <String>] [--priority <Int>] [--source <String>] [--context <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a autonomyRecord by id

```bash
agentic-db autonomy-record get --id <value>
```
