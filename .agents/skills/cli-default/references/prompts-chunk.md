# promptsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for PromptsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db prompts-chunk list
agentic-db prompts-chunk get --id <UUID>
agentic-db prompts-chunk create --promptsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db prompts-chunk update --id <UUID> [--promptsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db prompts-chunk delete --id <UUID>
```

## Examples

### List all promptsChunk records

```bash
agentic-db prompts-chunk list
```

### Create a promptsChunk

```bash
agentic-db prompts-chunk create --promptsId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a promptsChunk by id

```bash
agentic-db prompts-chunk get --id <value>
```
