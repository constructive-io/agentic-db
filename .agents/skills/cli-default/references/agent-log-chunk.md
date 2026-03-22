# agentLogChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentLogChunk records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db agent-log-chunk list
agentic-db agent-log-chunk get --id <UUID>
agentic-db agent-log-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --agentLogId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db agent-log-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--agentLogId <UUID>]
agentic-db agent-log-chunk delete --id <UUID>
```

## Examples

### List all agentLogChunk records

```bash
agentic-db agent-log-chunk list
```

### Create a agentLogChunk

```bash
agentic-db agent-log-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --agentLogId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a agentLogChunk by id

```bash
agentic-db agent-log-chunk get --id <value>
```
