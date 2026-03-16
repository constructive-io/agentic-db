# goal

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Goal records via agentic-db CLI

## Usage

```bash
agentic-db goal list
agentic-db goal get --id <value>
agentic-db goal create --entityId <value> --title <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --statusTrgmSimilarity <value> --categoryTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--targetDate <value>] [--status <value>] [--category <value>] [--progressPct <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db goal update --id <value> [--entityId <value>] [--title <value>] [--description <value>] [--targetDate <value>] [--status <value>] [--category <value>] [--progressPct <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--titleTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--categoryTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db goal delete --id <value>
```

## Examples

### List all goal records

```bash
agentic-db goal list
```

### Create a goal

```bash
agentic-db goal create --entityId <value> --title <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --statusTrgmSimilarity <value> --categoryTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--targetDate <value>] [--status <value>] [--category <value>] [--progressPct <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a goal by id

```bash
agentic-db goal get --id <value>
```
