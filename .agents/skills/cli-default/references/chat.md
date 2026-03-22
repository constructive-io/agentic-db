# chat

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Chat records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db chat list
agentic-db chat get --id <UUID>
agentic-db chat create --entityId <UUID> [--title <String>] [--startedAt <Datetime>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db chat update --id <UUID> [--entityId <UUID>] [--title <String>] [--startedAt <Datetime>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db chat delete --id <UUID>
```

## Examples

### List all chat records

```bash
agentic-db chat list
```

### Create a chat

```bash
agentic-db chat create --entityId <UUID> [--title <String>] [--startedAt <Datetime>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a chat by id

```bash
agentic-db chat get --id <value>
```
