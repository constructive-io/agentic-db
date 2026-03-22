# agentLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentLog records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `levelTrgmSimilarity`, `messageTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db agent-log list
agentic-db agent-log get --id <UUID>
agentic-db agent-log create --entityId <UUID> --agentId <UUID> --level <String> --message <String> [--context <JSON>] [--taskId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db agent-log update --id <UUID> [--entityId <UUID>] [--agentId <UUID>] [--level <String>] [--message <String>] [--context <JSON>] [--taskId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db agent-log delete --id <UUID>
```

## Examples

### List all agentLog records

```bash
agentic-db agent-log list
```

### Create a agentLog

```bash
agentic-db agent-log create --entityId <UUID> --agentId <UUID> --level <String> --message <String> [--context <JSON>] [--taskId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a agentLog by id

```bash
agentic-db agent-log get --id <value>
```
