# company

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Company records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `domainTrgmSimilarity`, `industryTrgmSimilarity`, `descriptionTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db company list
agentic-db company get --id <UUID>
agentic-db company create --entityId <UUID> --name <String> [--domain <String>] [--industry <String>] [--description <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db company update --id <UUID> [--entityId <UUID>] [--name <String>] [--domain <String>] [--industry <String>] [--description <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db company delete --id <UUID>
```

## Examples

### List all company records

```bash
agentic-db company list
```

### Create a company

```bash
agentic-db company create --entityId <UUID> --name <String> [--domain <String>] [--industry <String>] [--description <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a company by id

```bash
agentic-db company get --id <value>
```
