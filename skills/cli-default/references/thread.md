# thread

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Thread records via agentic-db CLI

## Usage

```bash
agentic-db thread list
agentic-db thread get --id <value>
agentic-db thread create --entityId <value> --title <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --summaryTrgmSimilarity <value> --statusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--summary <value>] [--status <value>] [--parentThreadId <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db thread update --id <value> [--entityId <value>] [--title <value>] [--summary <value>] [--status <value>] [--parentThreadId <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--titleTrgmSimilarity <value>] [--summaryTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db thread delete --id <value>
```

## Examples

### List all thread records

```bash
agentic-db thread list
```

### Create a thread

```bash
agentic-db thread create --entityId <value> --title <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --summaryTrgmSimilarity <value> --statusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--summary <value>] [--status <value>] [--parentThreadId <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a thread by id

```bash
agentic-db thread get --id <value>
```
