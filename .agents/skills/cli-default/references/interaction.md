# interaction

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Interaction records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `typeTrgmSimilarity`, `summaryTrgmSimilarity`, `sentimentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db interaction list
agentic-db interaction get --id <UUID>
agentic-db interaction create --entityId <UUID> --contactId <UUID> --type <String> --occurredAt <Datetime> [--summary <String>] [--sentiment <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db interaction update --id <UUID> [--entityId <UUID>] [--contactId <UUID>] [--type <String>] [--occurredAt <Datetime>] [--summary <String>] [--sentiment <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db interaction delete --id <UUID>
```

## Examples

### List all interaction records

```bash
agentic-db interaction list
```

### Create a interaction

```bash
agentic-db interaction create --entityId <UUID> --contactId <UUID> --type <String> --occurredAt <Datetime> [--summary <String>] [--sentiment <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a interaction by id

```bash
agentic-db interaction get --id <value>
```
