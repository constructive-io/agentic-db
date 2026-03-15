# venue

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Venue records via agent-db CLI

## Usage

```bash
agent-db venue list
agent-db venue get --id <value>
agent-db venue create --entityId <value> --name <value> --searchTsvRank <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --addressTrgmSimilarity <value> --neighborhoodTrgmSimilarity <value> --cityTrgmSimilarity <value> --categoryTrgmSimilarity <value> --statusTrgmSimilarity <value> --googlePlaceIdTrgmSimilarity <value> --priceLevelTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--address <value>] [--neighborhood <value>] [--city <value>] [--category <value>] [--status <value>] [--googlePlaceId <value>] [--rating <value>] [--priceLevel <value>] [--isFavorite <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
agent-db venue update --id <value> [--entityId <value>] [--name <value>] [--address <value>] [--neighborhood <value>] [--city <value>] [--category <value>] [--status <value>] [--googlePlaceId <value>] [--rating <value>] [--priceLevel <value>] [--isFavorite <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>] [--searchTsvRank <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--addressTrgmSimilarity <value>] [--neighborhoodTrgmSimilarity <value>] [--cityTrgmSimilarity <value>] [--categoryTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--googlePlaceIdTrgmSimilarity <value>] [--priceLevelTrgmSimilarity <value>] [--notesTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db venue delete --id <value>
```

## Examples

### List all venue records

```bash
agent-db venue list
```

### Create a venue

```bash
agent-db venue create --entityId <value> --name <value> --searchTsvRank <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --addressTrgmSimilarity <value> --neighborhoodTrgmSimilarity <value> --cityTrgmSimilarity <value> --categoryTrgmSimilarity <value> --statusTrgmSimilarity <value> --googlePlaceIdTrgmSimilarity <value> --priceLevelTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--address <value>] [--neighborhood <value>] [--city <value>] [--category <value>] [--status <value>] [--googlePlaceId <value>] [--rating <value>] [--priceLevel <value>] [--isFavorite <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
```

### Get a venue by id

```bash
agent-db venue get --id <value>
```
