# expensesChunk

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ExpensesChunk records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db expenses-chunk list
agentic-db expenses-chunk get --id <UUID>
agentic-db expenses-chunk create --entityId <UUID> --expensesId <UUID> --content <String> --expenseId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
agentic-db expenses-chunk update --id <UUID> [--entityId <UUID>] [--expensesId <UUID>] [--content <String>] [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>] [--expenseId <UUID>]
agentic-db expenses-chunk delete --id <UUID>
```

## Examples

### List all expensesChunk records

```bash
agentic-db expenses-chunk list
```

### Create a expensesChunk

```bash
agentic-db expenses-chunk create --entityId <UUID> --expensesId <UUID> --content <String> --expenseId <UUID> [--chunkIndex <Int>] [--embedding <Vector>] [--metadata <JSON>]
```

### Get a expensesChunk by id

```bash
agentic-db expenses-chunk get --id <value>
```
