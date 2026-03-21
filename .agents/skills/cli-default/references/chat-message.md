# chatMessage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ChatMessage records via agentic-db CLI

**Unified Search API fields:** `contentBm25Score`, `embeddingTextBm25Score`, `roleTrgmSimilarity`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db chat-message list
agentic-db chat-message get --id <UUID>
agentic-db chat-message create --entityId <UUID> [--chatId <UUID>] [--threadId <UUID>] [--role <String>] [--content <String>] [--toolCalls <JSON>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db chat-message update --id <UUID> [--entityId <UUID>] [--chatId <UUID>] [--threadId <UUID>] [--role <String>] [--content <String>] [--toolCalls <JSON>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db chat-message delete --id <UUID>
```

## Examples

### List all chatMessage records

```bash
agentic-db chat-message list
```

### Create a chatMessage

```bash
agentic-db chat-message create --entityId <UUID> [--chatId <UUID>] [--threadId <UUID>] [--role <String>] [--content <String>] [--toolCalls <JSON>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a chatMessage by id

```bash
agentic-db chat-message get --id <value>
```
