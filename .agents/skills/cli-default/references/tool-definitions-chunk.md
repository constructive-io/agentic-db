# toolDefinitionsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ToolDefinitionsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db tool-definitions-chunk list
agentic-db tool-definitions-chunk get --id <UUID>
agentic-db tool-definitions-chunk create --toolDefinitionsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db tool-definitions-chunk update --id <UUID> [--toolDefinitionsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db tool-definitions-chunk delete --id <UUID>
```

## Examples

### List all toolDefinitionsChunk records

```bash
agentic-db tool-definitions-chunk list
```

### Create a toolDefinitionsChunk

```bash
agentic-db tool-definitions-chunk create --toolDefinitionsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a toolDefinitionsChunk by id

```bash
agentic-db tool-definitions-chunk get --id <value>
```
