# eventLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EventLink records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db event-link list
agentic-db event-link get --id <UUID>
agentic-db event-link create --entityId <UUID> --url <String> --eventId <UUID> [--title <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db event-link update --id <UUID> [--entityId <UUID>] [--title <String>] [--url <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--eventId <UUID>]
agentic-db event-link delete --id <UUID>
```

## Examples

### List all eventLink records

```bash
agentic-db event-link list
```

### Create a eventLink

```bash
agentic-db event-link create --entityId <UUID> --url <String> --eventId <UUID> [--title <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a eventLink by id

```bash
agentic-db event-link get --id <value>
```
