# template

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Template records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `typeTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db template list
agentic-db template get --id <UUID>
agentic-db template create --entityId <UUID> --name <String> --content <JSON> [--description <String>] [--type <String>] [--variables <JSON>] [--isActive <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db template update --id <UUID> [--entityId <UUID>] [--name <String>] [--description <String>] [--type <String>] [--content <JSON>] [--variables <JSON>] [--isActive <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db template delete --id <UUID>
```

## Examples

### List all template records

```bash
agentic-db template list
```

### Create a template

```bash
agentic-db template create --entityId <UUID> --name <String> --content <JSON> [--description <String>] [--type <String>] [--variables <JSON>] [--isActive <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a template by id

```bash
agentic-db template get --id <value>
```
