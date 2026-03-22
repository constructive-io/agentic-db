# list

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for List records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `typeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db list list
agentic-db list get --id <UUID>
agentic-db list create --entityId <UUID> --name <String> [--description <String>] [--type <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db list update --id <UUID> [--entityId <UUID>] [--name <String>] [--description <String>] [--type <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db list delete --id <UUID>
```

## Examples

### List all list records

```bash
agentic-db list list
```

### Create a list

```bash
agentic-db list create --entityId <UUID> --name <String> [--description <String>] [--type <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a list by id

```bash
agentic-db list get --id <value>
```
