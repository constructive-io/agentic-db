# toolDefinition

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ToolDefinition records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `toolTypeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db tool-definition list
agentic-db tool-definition get --id <UUID>
agentic-db tool-definition create --entityId <UUID> --name <String> [--description <String>] [--toolType <String>] [--schema <JSON>] [--config <JSON>] [--isActive <Boolean>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db tool-definition update --id <UUID> [--entityId <UUID>] [--name <String>] [--description <String>] [--toolType <String>] [--schema <JSON>] [--config <JSON>] [--isActive <Boolean>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db tool-definition delete --id <UUID>
```

## Examples

### List all toolDefinition records

```bash
agentic-db tool-definition list
```

### Create a toolDefinition

```bash
agentic-db tool-definition create --entityId <UUID> --name <String> [--description <String>] [--toolType <String>] [--schema <JSON>] [--config <JSON>] [--isActive <Boolean>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a toolDefinition by id

```bash
agentic-db tool-definition get --id <value>
```
