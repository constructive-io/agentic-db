# memory

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Memory records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `contentTrgmSimilarity`, `locationTrgmSimilarity`, `moodTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db memory list
agentic-db memory get --id <UUID>
agentic-db memory create --entityId <UUID> --title <String> [--content <String>] [--occurredAt <Datetime>] [--location <String>] [--mood <String>] [--importance <Int>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--agentId <UUID>]
agentic-db memory update --id <UUID> [--entityId <UUID>] [--title <String>] [--content <String>] [--occurredAt <Datetime>] [--location <String>] [--mood <String>] [--importance <Int>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--agentId <UUID>]
agentic-db memory delete --id <UUID>
```

## Examples

### List all memory records

```bash
agentic-db memory list
```

### Create a memory

```bash
agentic-db memory create --entityId <UUID> --title <String> [--content <String>] [--occurredAt <Datetime>] [--location <String>] [--mood <String>] [--importance <Int>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--agentId <UUID>]
```

### Get a memory by id

```bash
agentic-db memory get --id <value>
```
