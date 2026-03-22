# venueLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for VenueLink records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db venue-link list
agentic-db venue-link get --id <UUID>
agentic-db venue-link create --entityId <UUID> --url <String> --venueId <UUID> [--title <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db venue-link update --id <UUID> [--entityId <UUID>] [--title <String>] [--url <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--venueId <UUID>]
agentic-db venue-link delete --id <UUID>
```

## Examples

### List all venueLink records

```bash
agentic-db venue-link list
```

### Create a venueLink

```bash
agentic-db venue-link create --entityId <UUID> --url <String> --venueId <UUID> [--title <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a venueLink by id

```bash
agentic-db venue-link get --id <value>
```
