# activityLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ActivityLog records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `activityTypeTrgmSimilarity`, `quantityUnitTrgmSimilarity`, `intensityTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db activity-log list
agentic-db activity-log get --id <UUID>
agentic-db activity-log create --entityId <UUID> --activityType <String> --completedAt <Datetime> [--durationMinutes <Int>] [--quantity <BigFloat>] [--quantityUnit <String>] [--intensity <String>] [--notes <String>] [--meta <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--habitId <UUID>]
agentic-db activity-log update --id <UUID> [--entityId <UUID>] [--activityType <String>] [--completedAt <Datetime>] [--durationMinutes <Int>] [--quantity <BigFloat>] [--quantityUnit <String>] [--intensity <String>] [--notes <String>] [--meta <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--habitId <UUID>]
agentic-db activity-log delete --id <UUID>
```

## Examples

### List all activityLog records

```bash
agentic-db activity-log list
```

### Create a activityLog

```bash
agentic-db activity-log create --entityId <UUID> --activityType <String> --completedAt <Datetime> [--durationMinutes <Int>] [--quantity <BigFloat>] [--quantityUnit <String>] [--intensity <String>] [--notes <String>] [--meta <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--habitId <UUID>]
```

### Get a activityLog by id

```bash
agentic-db activity-log get --id <value>
```
