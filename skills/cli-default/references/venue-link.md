# venueLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for VenueLink records via agentic-db CLI

## Usage

```bash
agentic-db venue-link list
agentic-db venue-link get --id <value>
agentic-db venue-link create --entityId <value> --url <value> --venueId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
agentic-db venue-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--venueId <value>] [--titleTrgmSimilarity <value>] [--urlTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db venue-link delete --id <value>
```

## Examples

### List all venueLink records

```bash
agentic-db venue-link list
```

### Create a venueLink

```bash
agentic-db venue-link create --entityId <value> --url <value> --venueId <value> --titleTrgmSimilarity <value> --urlTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--title <value>] [--embedding <value>]
```

### Get a venueLink by id

```bash
agentic-db venue-link get --id <value>
```
