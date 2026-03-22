# idea

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Idea records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `contentTrgmSimilarity`, `sourceTrgmSimilarity`, `statusTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db idea list
agentic-db idea get --id <UUID>
agentic-db idea create --entityId <UUID> --content <String> [--source <String>] [--status <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db idea update --id <UUID> [--entityId <UUID>] [--content <String>] [--source <String>] [--status <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db idea delete --id <UUID>
```

## Examples

### List all idea records

```bash
agentic-db idea list
```

### Create a idea

```bash
agentic-db idea create --entityId <UUID> --content <String> [--source <String>] [--status <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a idea by id

```bash
agentic-db idea get --id <value>
```
