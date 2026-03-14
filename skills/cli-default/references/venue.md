# venue

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Venue records via agent-os CLI

## Usage

```bash
agent-os venue list
agent-os venue get --id <value>
agent-os venue create --entityId <value> --name <value> --searchTsvRank <value> --embeddingDistance <value> [--address <value>] [--neighborhood <value>] [--city <value>] [--category <value>] [--status <value>] [--googlePlaceId <value>] [--rating <value>] [--priceLevel <value>] [--isFavorite <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
agent-os venue update --id <value> [--entityId <value>] [--name <value>] [--address <value>] [--neighborhood <value>] [--city <value>] [--category <value>] [--status <value>] [--googlePlaceId <value>] [--rating <value>] [--priceLevel <value>] [--isFavorite <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>] [--searchTsvRank <value>] [--embeddingDistance <value>]
agent-os venue delete --id <value>
```

## Examples

### List all venue records

```bash
agent-os venue list
```

### Create a venue

```bash
agent-os venue create --entityId <value> --name <value> --searchTsvRank <value> --embeddingDistance <value> [--address <value>] [--neighborhood <value>] [--city <value>] [--category <value>] [--status <value>] [--googlePlaceId <value>] [--rating <value>] [--priceLevel <value>] [--isFavorite <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
```

### Get a venue by id

```bash
agent-os venue get --id <value>
```
