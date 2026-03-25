# trip

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Trip records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `destinationTrgmSimilarity`, `descriptionTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db trip list
agentic-db trip get --id <UUID>
agentic-db trip create --entityId <UUID> --name <String> [--destination <String>] [--description <String>] [--startDate <Datetime>] [--endDate <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db trip update --id <UUID> [--entityId <UUID>] [--name <String>] [--destination <String>] [--description <String>] [--startDate <Datetime>] [--endDate <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db trip delete --id <UUID>
```

## Examples

### List all trip records

```bash
agentic-db trip list
```

### Create a trip

```bash
agentic-db trip create --entityId <UUID> --name <String> [--destination <String>] [--description <String>] [--startDate <Datetime>] [--endDate <Datetime>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a trip by id

```bash
agentic-db trip get --id <value>
```
