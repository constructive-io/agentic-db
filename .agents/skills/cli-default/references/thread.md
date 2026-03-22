# thread

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Thread records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `summaryTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db thread list
agentic-db thread get --id <UUID>
agentic-db thread create --entityId <UUID> --title <String> [--summary <String>] [--status <String>] [--parentThreadId <UUID>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db thread update --id <UUID> [--entityId <UUID>] [--title <String>] [--summary <String>] [--status <String>] [--parentThreadId <UUID>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db thread delete --id <UUID>
```

## Examples

### List all thread records

```bash
agentic-db thread list
```

### Create a thread

```bash
agentic-db thread create --entityId <UUID> --title <String> [--summary <String>] [--status <String>] [--parentThreadId <UUID>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a thread by id

```bash
agentic-db thread get --id <value>
```
