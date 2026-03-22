# event

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Event records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `eventTypeTrgmSimilarity`, `locationTrgmSimilarity`, `cityTrgmSimilarity`, `notesTextTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db event list
agentic-db event get --id <UUID>
agentic-db event create --entityId <UUID> --name <String> [--eventType <String>] [--location <String>] [--city <String>] [--startedAt <Datetime>] [--endedAt <Datetime>] [--notesText <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db event update --id <UUID> [--entityId <UUID>] [--name <String>] [--eventType <String>] [--location <String>] [--city <String>] [--startedAt <Datetime>] [--endedAt <Datetime>] [--notesText <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db event delete --id <UUID>
```

## Examples

### List all event records

```bash
agentic-db event list
```

### Create a event

```bash
agentic-db event create --entityId <UUID> --name <String> [--eventType <String>] [--location <String>] [--city <String>] [--startedAt <Datetime>] [--endedAt <Datetime>] [--notesText <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a event by id

```bash
agentic-db event get --id <value>
```
