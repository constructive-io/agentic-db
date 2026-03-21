# goal

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Goal records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `descriptionTrgmSimilarity`, `statusTrgmSimilarity`, `categoryTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db goal list
agentic-db goal get --id <UUID>
agentic-db goal create --entityId <UUID> --title <String> [--description <String>] [--targetDate <Datetime>] [--status <String>] [--category <String>] [--progressPct <Int>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db goal update --id <UUID> [--entityId <UUID>] [--title <String>] [--description <String>] [--targetDate <Datetime>] [--status <String>] [--category <String>] [--progressPct <Int>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db goal delete --id <UUID>
```

## Examples

### List all goal records

```bash
agentic-db goal list
```

### Create a goal

```bash
agentic-db goal create --entityId <UUID> --title <String> [--description <String>] [--targetDate <Datetime>] [--status <String>] [--category <String>] [--progressPct <Int>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a goal by id

```bash
agentic-db goal get --id <value>
```
