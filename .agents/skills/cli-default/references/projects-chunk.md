# projectsChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ProjectsChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db projects-chunk list
agentic-db projects-chunk get --id <UUID>
agentic-db projects-chunk create --entityId <UUID> --projectsId <UUID> --content <String> --projectId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db projects-chunk update --id <UUID> [--entityId <UUID>] [--projectsId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>] [--projectId <UUID>]
agentic-db projects-chunk delete --id <UUID>
```

## Examples

### List all projectsChunk records

```bash
agentic-db projects-chunk list
```

### Create a projectsChunk

```bash
agentic-db projects-chunk create --entityId <UUID> --projectsId <UUID> --content <String> --projectId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a projectsChunk by id

```bash
agentic-db projects-chunk get --id <value>
```
