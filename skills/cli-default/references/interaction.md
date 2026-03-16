# interaction

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Interaction records via agentic-db CLI

## Usage

```bash
agentic-db interaction list
agentic-db interaction get --id <value>
agentic-db interaction create --entityId <value> --contactId <value> --type <value> --occurredAt <value> --embeddingTextBm25Score <value> --typeTrgmSimilarity <value> --summaryTrgmSimilarity <value> --sentimentTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--summary <value>] [--sentiment <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db interaction update --id <value> [--entityId <value>] [--contactId <value>] [--type <value>] [--occurredAt <value>] [--summary <value>] [--sentiment <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--typeTrgmSimilarity <value>] [--summaryTrgmSimilarity <value>] [--sentimentTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db interaction delete --id <value>
```

## Examples

### List all interaction records

```bash
agentic-db interaction list
```

### Create a interaction

```bash
agentic-db interaction create --entityId <value> --contactId <value> --type <value> --occurredAt <value> --embeddingTextBm25Score <value> --typeTrgmSimilarity <value> --summaryTrgmSimilarity <value> --sentimentTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--summary <value>] [--sentiment <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a interaction by id

```bash
agentic-db interaction get --id <value>
```
