# reminder

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Reminder records via agentic-db CLI

## Usage

```bash
agentic-db reminder list
agentic-db reminder get --id <value>
agentic-db reminder create --entityId <value> --title <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --recurrenceTrgmSimilarity <value> --statusTrgmSimilarity <value> --relatedEntityTypeTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--dueAt <value>] [--completedAt <value>] [--recurrence <value>] [--status <value>] [--relatedEntityId <value>] [--relatedEntityType <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db reminder update --id <value> [--entityId <value>] [--title <value>] [--dueAt <value>] [--completedAt <value>] [--recurrence <value>] [--status <value>] [--relatedEntityId <value>] [--relatedEntityType <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--titleTrgmSimilarity <value>] [--recurrenceTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--relatedEntityTypeTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db reminder delete --id <value>
```

## Examples

### List all reminder records

```bash
agentic-db reminder list
```

### Create a reminder

```bash
agentic-db reminder create --entityId <value> --title <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --recurrenceTrgmSimilarity <value> --statusTrgmSimilarity <value> --relatedEntityTypeTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--dueAt <value>] [--completedAt <value>] [--recurrence <value>] [--status <value>] [--relatedEntityId <value>] [--relatedEntityType <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a reminder by id

```bash
agentic-db reminder get --id <value>
```
