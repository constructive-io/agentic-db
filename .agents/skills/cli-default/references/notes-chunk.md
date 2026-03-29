# notesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for NotesChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db notes-chunk list
agentic-db notes-chunk get --id <UUID>
agentic-db notes-chunk create --entityId <UUID> --notesId <UUID> --content <String> --noteId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db notes-chunk update --id <UUID> [--entityId <UUID>] [--notesId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>] [--noteId <UUID>]
agentic-db notes-chunk delete --id <UUID>
```

## Examples

### List all notesChunk records

```bash
agentic-db notes-chunk list
```

### Create a notesChunk

```bash
agentic-db notes-chunk create --entityId <UUID> --notesId <UUID> --content <String> --noteId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a notesChunk by id

```bash
agentic-db notes-chunk get --id <value>
```
