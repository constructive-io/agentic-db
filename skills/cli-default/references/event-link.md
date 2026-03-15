# eventLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EventLink records via agent-db CLI

## Usage

```bash
agent-db event-link list
agent-db event-link get --id <value>
agent-db event-link create --entityId <value> --url <value> --eventId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
agent-db event-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--eventId <value>] [--titleTrgmSimilarity <value>] [--urlTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db event-link delete --id <value>
```

## Examples

### List all eventLink records

```bash
agent-db event-link list
```

### Create a eventLink

```bash
agent-db event-link create --entityId <value> --url <value> --eventId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
```

### Get a eventLink by id

```bash
agent-db event-link get --id <value>
```
