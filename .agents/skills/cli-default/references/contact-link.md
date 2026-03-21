# contactLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactLink records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db contact-link list
agentic-db contact-link get --id <UUID>
agentic-db contact-link create --entityId <UUID> --url <String> --contactId <UUID> [--title <String>] [--embedding <Vector>]
agentic-db contact-link update --id <UUID> [--entityId <UUID>] [--title <String>] [--url <String>] [--embedding <Vector>] [--contactId <UUID>]
agentic-db contact-link delete --id <UUID>
```

## Examples

### List all contactLink records

```bash
agentic-db contact-link list
```

### Create a contactLink

```bash
agentic-db contact-link create --entityId <UUID> --url <String> --contactId <UUID> [--title <String>] [--embedding <Vector>]
```

### Get a contactLink by id

```bash
agentic-db contact-link get --id <value>
```
