# habit

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Habit records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `frequencyTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db habit list
agentic-db habit get --id <UUID>
agentic-db habit create --entityId <UUID> --name <String> [--description <String>] [--frequency <String>] [--targetCount <Int>] [--currentStreak <Int>] [--bestStreak <Int>] [--isActive <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db habit update --id <UUID> [--entityId <UUID>] [--name <String>] [--description <String>] [--frequency <String>] [--targetCount <Int>] [--currentStreak <Int>] [--bestStreak <Int>] [--isActive <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db habit delete --id <UUID>
```

## Examples

### List all habit records

```bash
agentic-db habit list
```

### Create a habit

```bash
agentic-db habit create --entityId <UUID> --name <String> [--description <String>] [--frequency <String>] [--targetCount <Int>] [--currentStreak <Int>] [--bestStreak <Int>] [--isActive <Boolean>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a habit by id

```bash
agentic-db habit get --id <value>
```
