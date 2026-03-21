# rule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Rule records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `titleTrgmSimilarity`, `contentTrgmSimilarity`, `kindTrgmSimilarity`, `severityTrgmSimilarity`, `slugTrgmSimilarity`, `verificationTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db rule list
agentic-db rule get --id <UUID>
agentic-db rule create --entityId <UUID> --title <String> [--content <String>] [--kind <String>] [--severity <String>] [--isActive <Boolean>] [--slug <String>] [--verification <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--triggerConcept <Vector>]
agentic-db rule update --id <UUID> [--entityId <UUID>] [--title <String>] [--content <String>] [--kind <String>] [--severity <String>] [--isActive <Boolean>] [--slug <String>] [--verification <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--triggerConcept <Vector>]
agentic-db rule delete --id <UUID>
```

## Examples

### List all rule records

```bash
agentic-db rule list
```

### Create a rule

```bash
agentic-db rule create --entityId <UUID> --title <String> [--content <String>] [--kind <String>] [--severity <String>] [--isActive <Boolean>] [--slug <String>] [--verification <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--triggerConcept <Vector>]
```

### Get a rule by id

```bash
agentic-db rule get --id <value>
```
