# eventLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EventLink records via agentic-db CLI

## Usage

```bash
agentic-db event-link list
agentic-db event-link get --id <value>
agentic-db event-link create --entityId <value> --url <value> --eventId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
agentic-db event-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--eventId <value>] [--titleTrgmSimilarity <value>] [--urlTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db event-link delete --id <value>
```

## Examples

### List all eventLink records

```bash
agentic-db event-link list
```

### Create a eventLink

```bash
agentic-db event-link create --entityId <value> --url <value> --eventId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
```

### Get a eventLink by id

```bash
agentic-db event-link get --id <value>
```
