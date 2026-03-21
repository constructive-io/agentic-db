# deal

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Deal records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `stageTrgmSimilarity`, `currencyTrgmSimilarity`, `notesTextTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db deal list
agentic-db deal get --id <UUID>
agentic-db deal create --entityId <UUID> --name <String> [--stage <String>] [--value <BigFloat>] [--currency <String>] [--expectedCloseDate <Datetime>] [--notesText <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db deal update --id <UUID> [--entityId <UUID>] [--name <String>] [--stage <String>] [--value <BigFloat>] [--currency <String>] [--expectedCloseDate <Datetime>] [--notesText <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db deal delete --id <UUID>
```

## Examples

### List all deal records

```bash
agentic-db deal list
```

### Create a deal

```bash
agentic-db deal create --entityId <UUID> --name <String> [--stage <String>] [--value <BigFloat>] [--currency <String>] [--expectedCloseDate <Datetime>] [--notesText <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a deal by id

```bash
agentic-db deal get --id <value>
```
