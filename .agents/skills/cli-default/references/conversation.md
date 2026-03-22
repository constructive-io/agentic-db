# conversation

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Conversation records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db conversation list
agentic-db conversation get --id <UUID>
agentic-db conversation create --entityId <UUID> --title <String> [--agentId <UUID>] [--status <String>] [--meta <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db conversation update --id <UUID> [--entityId <UUID>] [--title <String>] [--agentId <UUID>] [--status <String>] [--meta <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db conversation delete --id <UUID>
```

## Examples

### List all conversation records

```bash
agentic-db conversation list
```

### Create a conversation

```bash
agentic-db conversation create --entityId <UUID> --title <String> [--agentId <UUID>] [--status <String>] [--meta <JSON>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a conversation by id

```bash
agentic-db conversation get --id <value>
```
