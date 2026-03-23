# rulesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RulesChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db rules-chunk list
agentic-db rules-chunk get --id <UUID>
agentic-db rules-chunk create --rulesId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db rules-chunk update --id <UUID> [--rulesId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db rules-chunk delete --id <UUID>
```

## Examples

### List all rulesChunk records

```bash
agentic-db rules-chunk list
```

### Create a rulesChunk

```bash
agentic-db rules-chunk create --rulesId <UUID> --content <String> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a rulesChunk by id

```bash
agentic-db rules-chunk get --id <value>
```
