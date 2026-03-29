# contactsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db contacts-chunk list
agentic-db contacts-chunk get --id <UUID>
agentic-db contacts-chunk create --entityId <UUID> --contactsId <UUID> --content <String> --contactId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db contacts-chunk update --id <UUID> [--entityId <UUID>] [--contactsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>] [--contactId <UUID>]
agentic-db contacts-chunk delete --id <UUID>
```

## Examples

### List all contactsChunk records

```bash
agentic-db contacts-chunk list
```

### Create a contactsChunk

```bash
agentic-db contacts-chunk create --entityId <UUID> --contactsId <UUID> --content <String> --contactId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a contactsChunk by id

```bash
agentic-db contacts-chunk get --id <value>
```
