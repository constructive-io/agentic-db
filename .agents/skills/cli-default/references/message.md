# message

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Message records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `roleTrgmSimilarity`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db message list
agentic-db message get --id <UUID>
agentic-db message create --entityId <UUID> --conversationId <UUID> --role <String> --content <String> [--tokenCount <Int>] [--meta <JSON>] [--toolCalls <JSON>] [--toolResults <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db message update --id <UUID> [--entityId <UUID>] [--conversationId <UUID>] [--role <String>] [--content <String>] [--tokenCount <Int>] [--meta <JSON>] [--toolCalls <JSON>] [--toolResults <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db message delete --id <UUID>
```

## Examples

### List all message records

```bash
agentic-db message list
```

### Create a message

```bash
agentic-db message create --entityId <UUID> --conversationId <UUID> --role <String> --content <String> [--tokenCount <Int>] [--meta <JSON>] [--toolCalls <JSON>] [--toolResults <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a message by id

```bash
agentic-db message get --id <value>
```
