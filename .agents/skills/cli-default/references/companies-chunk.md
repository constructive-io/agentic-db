# companiesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CompaniesChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db companies-chunk list
agentic-db companies-chunk get --id <UUID>
agentic-db companies-chunk create --entityId <UUID> --companiesId <UUID> --content <String> --companyId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db companies-chunk update --id <UUID> [--entityId <UUID>] [--companiesId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>] [--companyId <UUID>]
agentic-db companies-chunk delete --id <UUID>
```

## Examples

### List all companiesChunk records

```bash
agentic-db companies-chunk list
```

### Create a companiesChunk

```bash
agentic-db companies-chunk create --entityId <UUID> --companiesId <UUID> --content <String> --companyId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a companiesChunk by id

```bash
agentic-db companies-chunk get --id <value>
```
