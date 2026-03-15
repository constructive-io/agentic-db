# venueLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for VenueLink records via agent-db CLI

## Usage

```bash
agent-db venue-link list
agent-db venue-link get --id <value>
agent-db venue-link create --entityId <value> --url <value> --venueId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
agent-db venue-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--venueId <value>] [--titleTrgmSimilarity <value>] [--urlTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db venue-link delete --id <value>
```

## Examples

### List all venueLink records

```bash
agent-db venue-link list
```

### Create a venueLink

```bash
agent-db venue-link create --entityId <value> --url <value> --venueId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
```

### Get a venueLink by id

```bash
agent-db venue-link get --id <value>
```
