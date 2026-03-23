# agentsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for AgentsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db agents-chunk list
agentic-db agents-chunk get --id <UUID>
agentic-db agents-chunk create --agentsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db agents-chunk update --id <UUID> [--agentsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db agents-chunk delete --id <UUID>
```

## Examples

### List all agentsChunk records

```bash
agentic-db agents-chunk list
```

### Create a agentsChunk

```bash
agentic-db agents-chunk create --agentsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a agentsChunk by id

```bash
agentic-db agents-chunk get --id <value>
```
