# document

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Document records via agentic-db CLI

**Unified Search API fields:** `contentBm25Score`, `embeddingTextBm25Score`, `titleTrgmSimilarity`, `urlTrgmSimilarity`, `contentTrgmSimilarity`, `sourceTypeTrgmSimilarity`, `abstractTrgmSimilarity`, `overviewTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db document list
agentic-db document get --id <UUID>
agentic-db document create --entityId <UUID> --title <String> [--url <String>] [--content <String>] [--sourceType <String>] [--isRead <Boolean>] [--savedAt <Datetime>] [--parentDocumentId <UUID>] [--abstract <String>] [--overview <String>] [--activeCount <Int>] [--lastAccessedAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db document update --id <UUID> [--entityId <UUID>] [--title <String>] [--url <String>] [--content <String>] [--sourceType <String>] [--isRead <Boolean>] [--savedAt <Datetime>] [--parentDocumentId <UUID>] [--abstract <String>] [--overview <String>] [--activeCount <Int>] [--lastAccessedAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db document delete --id <UUID>
```

## Examples

### List all document records

```bash
agentic-db document list
```

### Create a document

```bash
agentic-db document create --entityId <UUID> --title <String> [--url <String>] [--content <String>] [--sourceType <String>] [--isRead <Boolean>] [--savedAt <Datetime>] [--parentDocumentId <UUID>] [--abstract <String>] [--overview <String>] [--activeCount <Int>] [--lastAccessedAt <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a document by id

```bash
agentic-db document get --id <value>
```
