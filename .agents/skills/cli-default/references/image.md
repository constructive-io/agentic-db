# image

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Image records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db image list
agentic-db image get --id <UUID>
agentic-db image create --entityId <UUID> --url <String> [--meta <JSON>] [--altText <String>] [--caption <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db image update --id <UUID> [--entityId <UUID>] [--url <String>] [--meta <JSON>] [--altText <String>] [--caption <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db image delete --id <UUID>
```

## Examples

### List all image records

```bash
agentic-db image list
```

### Create a image

```bash
agentic-db image create --entityId <UUID> --url <String> [--meta <JSON>] [--altText <String>] [--caption <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a image by id

```bash
agentic-db image get --id <value>
```
