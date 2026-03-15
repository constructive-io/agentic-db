# chat

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Chat records via agent-db CLI

## Usage

```bash
agent-db chat list
agent-db chat get --id <value>
agent-db chat create --entityId <value> --titleTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--startedAt <value>] [--embeddingText <value>] [--embedding <value>]
agent-db chat update --id <value> [--entityId <value>] [--title <value>] [--startedAt <value>] [--embeddingText <value>] [--embedding <value>] [--titleTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db chat delete --id <value>
```

## Examples

### List all chat records

```bash
agent-db chat list
```

### Create a chat

```bash
agent-db chat create --entityId <value> --titleTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--startedAt <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a chat by id

```bash
agent-db chat get --id <value>
```
