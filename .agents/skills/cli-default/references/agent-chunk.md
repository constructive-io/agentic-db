# agentChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db agent-chunk list
agentic-db agent-chunk get --id <UUID>
agentic-db agent-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --agentId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db agent-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--agentId <UUID>]
agentic-db agent-chunk delete --id <UUID>
```

## Examples

### List all agentChunk records

```bash
agentic-db agent-chunk list
```

### Create a agentChunk

```bash
agentic-db agent-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --agentId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a agentChunk by id

```bash
agentic-db agent-chunk get --id <value>
```
