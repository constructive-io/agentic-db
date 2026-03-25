# prompt

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Prompt records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `contentTrgmSimilarity`, `categoryTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db prompt list
agentic-db prompt get --id <UUID>
agentic-db prompt create --entityId <UUID> --name <String> --content <String> [--category <String>] [--version <Int>] [--isActive <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db prompt update --id <UUID> [--entityId <UUID>] [--name <String>] [--content <String>] [--category <String>] [--version <Int>] [--isActive <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db prompt delete --id <UUID>
```

## Examples

### List all prompt records

```bash
agentic-db prompt list
```

### Create a prompt

```bash
agentic-db prompt create --entityId <UUID> --name <String> --content <String> [--category <String>] [--version <Int>] [--isActive <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a prompt by id

```bash
agentic-db prompt get --id <value>
```
