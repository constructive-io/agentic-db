# activityLog

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ActivityLog records via agentic-db CLI

**Unified Search API fields:** `descriptionBm25Score`, `embeddingTextBm25Score`, `activityTypeTrgmSimilarity`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db activity-log list
agentic-db activity-log get --id <UUID>
agentic-db activity-log create --entityId <UUID> --activityType <String> [--title <String>] [--description <String>] [--occurredAt <Datetime>] [--durationMinutes <BigFloat>] [--data <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db activity-log update --id <UUID> [--entityId <UUID>] [--activityType <String>] [--title <String>] [--description <String>] [--occurredAt <Datetime>] [--durationMinutes <BigFloat>] [--data <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db activity-log delete --id <UUID>
```

## Examples

### List all activityLog records

```bash
agentic-db activity-log list
```

### Create a activityLog

```bash
agentic-db activity-log create --entityId <UUID> --activityType <String> [--title <String>] [--description <String>] [--occurredAt <Datetime>] [--durationMinutes <BigFloat>] [--data <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a activityLog by id

```bash
agentic-db activity-log get --id <value>
```
