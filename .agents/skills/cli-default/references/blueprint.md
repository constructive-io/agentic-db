# blueprint

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Blueprint records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `triggerConditionsTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db blueprint list
agentic-db blueprint get --id <UUID>
agentic-db blueprint create --entityId <UUID> --title <String> [--steps <JSON>] [--triggerConditions <String>] [--conversationId <UUID>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db blueprint update --id <UUID> [--entityId <UUID>] [--title <String>] [--steps <JSON>] [--triggerConditions <String>] [--conversationId <UUID>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db blueprint delete --id <UUID>
```

## Examples

### List all blueprint records

```bash
agentic-db blueprint list
```

### Create a blueprint

```bash
agentic-db blueprint create --entityId <UUID> --title <String> [--steps <JSON>] [--triggerConditions <String>] [--conversationId <UUID>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a blueprint by id

```bash
agentic-db blueprint get --id <value>
```
