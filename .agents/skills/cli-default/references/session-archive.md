# sessionArchive

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SessionArchive records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `summaryTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db session-archive list
agentic-db session-archive get --id <UUID>
agentic-db session-archive create --entityId <UUID> --sessionId <UUID> --archiveIndex <Int> --summary <String> [--messageRangeStart <Int>] [--messageRangeEnd <Int>] [--rawMessages <JSON>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db session-archive update --id <UUID> [--entityId <UUID>] [--sessionId <UUID>] [--archiveIndex <Int>] [--summary <String>] [--messageRangeStart <Int>] [--messageRangeEnd <Int>] [--rawMessages <JSON>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db session-archive delete --id <UUID>
```

## Examples

### List all sessionArchive records

```bash
agentic-db session-archive list
```

### Create a sessionArchive

```bash
agentic-db session-archive create --entityId <UUID> --sessionId <UUID> --archiveIndex <Int> --summary <String> [--messageRangeStart <Int>] [--messageRangeEnd <Int>] [--rawMessages <JSON>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a sessionArchive by id

```bash
agentic-db session-archive get --id <value>
```
