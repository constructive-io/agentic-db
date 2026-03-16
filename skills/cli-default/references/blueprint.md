# blueprint

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Blueprint records via agentic-db CLI

## Usage

```bash
agentic-db blueprint list
agentic-db blueprint get --id <value>
agentic-db blueprint create --entityId <value> --title <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --triggerConditionsTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--steps <value>] [--triggerConditions <value>] [--conversationId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db blueprint update --id <value> [--entityId <value>] [--title <value>] [--steps <value>] [--triggerConditions <value>] [--conversationId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--titleTrgmSimilarity <value>] [--triggerConditionsTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db blueprint delete --id <value>
```

## Examples

### List all blueprint records

```bash
agentic-db blueprint list
```

### Create a blueprint

```bash
agentic-db blueprint create --entityId <value> --title <value> --embeddingTextBm25Score <value> --titleTrgmSimilarity <value> --triggerConditionsTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--steps <value>] [--triggerConditions <value>] [--conversationId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a blueprint by id

```bash
agentic-db blueprint get --id <value>
```
