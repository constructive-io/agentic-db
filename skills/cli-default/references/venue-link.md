# venueLink

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for VenueLink records via agent-os CLI

## Usage

```bash
agent-os venue-link list
agent-os venue-link get --id <value>
agent-os venue-link create --entityId <value> --url <value> --venueId <value> --embeddingDistance <value> [--title <value>] [--embedding <value>]
agent-os venue-link update --id <value> [--entityId <value>] [--title <value>] [--url <value>] [--embedding <value>] [--venueId <value>] [--embeddingDistance <value>]
agent-os venue-link delete --id <value>
```

## Examples

### List all venueLink records

```bash
agent-os venue-link list
```

### Create a venueLink

```bash
agent-os venue-link create --entityId <value> --url <value> --venueId <value> --embeddingDistance <value> [--title <value>] [--embedding <value>]
```

### Get a venueLink by id

```bash
agent-os venue-link get --id <value>
```
