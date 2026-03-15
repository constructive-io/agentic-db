# thread

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Thread records via agent-db CLI

## Usage

```bash
agent-db thread list
agent-db thread get --id <value>
agent-db thread create --entityId <value> --title <value> --titleTrgmSimilarity <value> --summaryTrgmSimilarity <value> --statusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--summary <value>] [--status <value>] [--parentThreadId <value>] [--embeddingText <value>] [--embedding <value>]
agent-db thread update --id <value> [--entityId <value>] [--title <value>] [--summary <value>] [--status <value>] [--parentThreadId <value>] [--embeddingText <value>] [--embedding <value>] [--titleTrgmSimilarity <value>] [--summaryTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db thread delete --id <value>
```

## Examples

### List all thread records

```bash
agent-db thread list
```

### Create a thread

```bash
agent-db thread create --entityId <value> --title <value> --titleTrgmSimilarity <value> --summaryTrgmSimilarity <value> --statusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--summary <value>] [--status <value>] [--parentThreadId <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a thread by id

```bash
agent-db thread get --id <value>
```
