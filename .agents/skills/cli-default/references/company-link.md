# companyLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for CompanyLink records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db company-link list
agentic-db company-link get --id <UUID>
agentic-db company-link create --entityId <UUID> --url <String> --companyId <UUID> [--title <String>] [--embedding <Vector>]
agentic-db company-link update --id <UUID> [--entityId <UUID>] [--title <String>] [--url <String>] [--embedding <Vector>] [--companyId <UUID>]
agentic-db company-link delete --id <UUID>
```

## Examples

### List all companyLink records

```bash
agentic-db company-link list
```

### Create a companyLink

```bash
agentic-db company-link create --entityId <UUID> --url <String> --companyId <UUID> [--title <String>] [--embedding <Vector>]
```

### Get a companyLink by id

```bash
agentic-db company-link get --id <value>
```
