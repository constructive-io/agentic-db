# venue

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Venue records via agentic-db CLI

## Usage

```bash
agentic-db venue list
agentic-db venue get --id <value>
agentic-db venue create --entityId <value> --name <value> --searchTsvRank <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --addressTrgmSimilarity <value> --neighborhoodTrgmSimilarity <value> --cityTrgmSimilarity <value> --categoryTrgmSimilarity <value> --statusTrgmSimilarity <value> --googlePlaceIdTrgmSimilarity <value> --priceLevelTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--address <value>] [--neighborhood <value>] [--city <value>] [--category <value>] [--status <value>] [--googlePlaceId <value>] [--rating <value>] [--priceLevel <value>] [--isFavorite <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
agentic-db venue update --id <value> [--entityId <value>] [--name <value>] [--address <value>] [--neighborhood <value>] [--city <value>] [--category <value>] [--status <value>] [--googlePlaceId <value>] [--rating <value>] [--priceLevel <value>] [--isFavorite <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>] [--searchTsvRank <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--addressTrgmSimilarity <value>] [--neighborhoodTrgmSimilarity <value>] [--cityTrgmSimilarity <value>] [--categoryTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--googlePlaceIdTrgmSimilarity <value>] [--priceLevelTrgmSimilarity <value>] [--notesTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db venue delete --id <value>
```

## Examples

### List all venue records

```bash
agentic-db venue list
```

### Create a venue

```bash
agentic-db venue create --entityId <value> --name <value> --searchTsvRank <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --addressTrgmSimilarity <value> --neighborhoodTrgmSimilarity <value> --cityTrgmSimilarity <value> --categoryTrgmSimilarity <value> --statusTrgmSimilarity <value> --googlePlaceIdTrgmSimilarity <value> --priceLevelTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--address <value>] [--neighborhood <value>] [--city <value>] [--category <value>] [--status <value>] [--googlePlaceId <value>] [--rating <value>] [--priceLevel <value>] [--isFavorite <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
```

### Get a venue by id

```bash
agentic-db venue get --id <value>
```
