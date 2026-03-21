# note

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Note records via agentic-db CLI

**Unified Search API fields:** `contentBm25Score`, `embeddingTextBm25Score`, `contentTrgmSimilarity`, `abstractTrgmSimilarity`, `overviewTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db note list
agentic-db note get --id <UUID>
agentic-db note create --entityId <UUID> --content <String> [--abstract <String>] [--overview <String>] [--activeCount <Int>] [--lastAccessedAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db note update --id <UUID> [--entityId <UUID>] [--content <String>] [--abstract <String>] [--overview <String>] [--activeCount <Int>] [--lastAccessedAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db note delete --id <UUID>
```

## Examples

### List all note records

```bash
agentic-db note list
```

### Create a note

```bash
agentic-db note create --entityId <UUID> --content <String> [--abstract <String>] [--overview <String>] [--activeCount <Int>] [--lastAccessedAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a note by id

```bash
agentic-db note get --id <value>
```
