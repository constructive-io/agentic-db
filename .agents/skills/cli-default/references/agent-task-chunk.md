# agentTaskChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentTaskChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db agent-task-chunk list
agentic-db agent-task-chunk get --id <UUID>
agentic-db agent-task-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --agentTaskId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db agent-task-chunk update --id <UUID> [--entityId <UUID>] [--chunkIndex <Int>] [--content <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--agentTaskId <UUID>]
agentic-db agent-task-chunk delete --id <UUID>
```

## Examples

### List all agentTaskChunk records

```bash
agentic-db agent-task-chunk list
```

### Create a agentTaskChunk

```bash
agentic-db agent-task-chunk create --entityId <UUID> --chunkIndex <Int> --content <String> --agentTaskId <UUID> [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a agentTaskChunk by id

```bash
agentic-db agent-task-chunk get --id <value>
```
