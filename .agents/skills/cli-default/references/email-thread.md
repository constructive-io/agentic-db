# emailThread

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EmailThread records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `providerThreadIdTrgmSimilarity`, `subjectTrgmSimilarity`, `summaryTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db email-thread list
agentic-db email-thread get --id <UUID>
agentic-db email-thread create --entityId <UUID> --subject <String> [--providerThreadId <String>] [--lastMessageAt <Datetime>] [--summary <String>] [--status <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db email-thread update --id <UUID> [--entityId <UUID>] [--providerThreadId <String>] [--subject <String>] [--lastMessageAt <Datetime>] [--summary <String>] [--status <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db email-thread delete --id <UUID>
```

## Examples

### List all emailThread records

```bash
agentic-db email-thread list
```

### Create a emailThread

```bash
agentic-db email-thread create --entityId <UUID> --subject <String> [--providerThreadId <String>] [--lastMessageAt <Datetime>] [--summary <String>] [--status <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a emailThread by id

```bash
agentic-db email-thread get --id <value>
```
