# agentTasksChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentTasksChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db agent-tasks-chunk list
agentic-db agent-tasks-chunk get --id <UUID>
agentic-db agent-tasks-chunk create --agentTasksId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db agent-tasks-chunk update --id <UUID> [--agentTasksId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db agent-tasks-chunk delete --id <UUID>
```

## Examples

### List all agentTasksChunk records

```bash
agentic-db agent-tasks-chunk list
```

### Create a agentTasksChunk

```bash
agentic-db agent-tasks-chunk create --agentTasksId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a agentTasksChunk by id

```bash
agentic-db agent-tasks-chunk get --id <value>
```
