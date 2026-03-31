# place

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Place records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `addressTrgmSimilarity`, `descriptionTrgmSimilarity`, `categoryTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db place list
agentic-db place get --id <UUID>
agentic-db place create --entityId <UUID> --name <String> [--address <String>] [--description <String>] [--category <String>] [--rating <BigFloat>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--locationGeo <GeographyInterface>]
agentic-db place update --id <UUID> [--entityId <UUID>] [--name <String>] [--address <String>] [--description <String>] [--category <String>] [--rating <BigFloat>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--locationGeo <GeographyInterface>]
agentic-db place delete --id <UUID>
```

## Examples

### List all place records

```bash
agentic-db place list
```

### Create a place

```bash
agentic-db place create --entityId <UUID> --name <String> [--address <String>] [--description <String>] [--category <String>] [--rating <BigFloat>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--locationGeo <GeographyInterface>]
```

### Get a place by id

```bash
agentic-db place get --id <value>
```
