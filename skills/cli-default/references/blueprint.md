# blueprint

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Blueprint records via agent-db CLI

## Usage

```bash
agent-db blueprint list
agent-db blueprint get --id <value>
agent-db blueprint create --entityId <value> --title <value> --embeddingDistance <value> [--steps <value>] [--triggerConditions <value>] [--conversationId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db blueprint update --id <value> [--entityId <value>] [--title <value>] [--steps <value>] [--triggerConditions <value>] [--conversationId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-db blueprint delete --id <value>
```

## Examples

### List all blueprint records

```bash
agent-db blueprint list
```

### Create a blueprint

```bash
agent-db blueprint create --entityId <value> --title <value> --embeddingDistance <value> [--steps <value>] [--triggerConditions <value>] [--conversationId <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a blueprint by id

```bash
agent-db blueprint get --id <value>
```
