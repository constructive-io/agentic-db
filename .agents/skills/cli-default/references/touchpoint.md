# touchpoint

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Touchpoint records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `touchpointTypeTrgmSimilarity`, `subjectTrgmSimilarity`, `summaryTrgmSimilarity`, `sentimentTrgmSimilarity`, `directionTrgmSimilarity`, `channelTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db touchpoint list
agentic-db touchpoint get --id <UUID>
agentic-db touchpoint create --entityId <UUID> --contactId <UUID> --touchpointType <String> --occurredAt <Datetime> [--subject <String>] [--summary <String>] [--sentiment <String>] [--direction <String>] [--channel <String>] [--dealId <UUID>] [--companyId <UUID>] [--eventId <UUID>] [--meta <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db touchpoint update --id <UUID> [--entityId <UUID>] [--contactId <UUID>] [--touchpointType <String>] [--occurredAt <Datetime>] [--subject <String>] [--summary <String>] [--sentiment <String>] [--direction <String>] [--channel <String>] [--dealId <UUID>] [--companyId <UUID>] [--eventId <UUID>] [--meta <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db touchpoint delete --id <UUID>
```

## Examples

### List all touchpoint records

```bash
agentic-db touchpoint list
```

### Create a touchpoint

```bash
agentic-db touchpoint create --entityId <UUID> --contactId <UUID> --touchpointType <String> --occurredAt <Datetime> [--subject <String>] [--summary <String>] [--sentiment <String>] [--direction <String>] [--channel <String>] [--dealId <UUID>] [--companyId <UUID>] [--eventId <UUID>] [--meta <JSON>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a touchpoint by id

```bash
agentic-db touchpoint get --id <value>
```
