# agentLogsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentLogsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db agent-logs-chunk list
agentic-db agent-logs-chunk get --id <UUID>
agentic-db agent-logs-chunk create --agentLogsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db agent-logs-chunk update --id <UUID> [--agentLogsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db agent-logs-chunk delete --id <UUID>
```

## Examples

### List all agentLogsChunk records

```bash
agentic-db agent-logs-chunk list
```

### Create a agentLogsChunk

```bash
agentic-db agent-logs-chunk create --agentLogsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a agentLogsChunk by id

```bash
agentic-db agent-logs-chunk get --id <value>
```
