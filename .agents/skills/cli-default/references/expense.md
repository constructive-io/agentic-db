# expense

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Expense records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `descriptionTrgmSimilarity`, `currencyTrgmSimilarity`, `categoryTrgmSimilarity`, `vendorTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db expense list
agentic-db expense get --id <UUID>
agentic-db expense create --entityId <UUID> --description <String> --amount <BigFloat> [--currency <String>] [--category <String>] [--occurredAt <Datetime>] [--vendor <String>] [--notes <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--tripId <UUID>]
agentic-db expense update --id <UUID> [--entityId <UUID>] [--description <String>] [--amount <BigFloat>] [--currency <String>] [--category <String>] [--occurredAt <Datetime>] [--vendor <String>] [--notes <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--tripId <UUID>]
agentic-db expense delete --id <UUID>
```

## Examples

### List all expense records

```bash
agentic-db expense list
```

### Create a expense

```bash
agentic-db expense create --entityId <UUID> --description <String> --amount <BigFloat> [--currency <String>] [--category <String>] [--occurredAt <Datetime>] [--vendor <String>] [--notes <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--tripId <UUID>]
```

### Get a expense by id

```bash
agentic-db expense get --id <value>
```
