# venue

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Venue records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `addressTrgmSimilarity`, `neighborhoodTrgmSimilarity`, `cityTrgmSimilarity`, `categoryTrgmSimilarity`, `statusTrgmSimilarity`, `googlePlaceIdTrgmSimilarity`, `priceLevelTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db venue list
agentic-db venue get --id <UUID>
agentic-db venue create --entityId <UUID> --name <String> [--address <String>] [--neighborhood <String>] [--city <String>] [--category <String>] [--status <String>] [--googlePlaceId <String>] [--rating <BigFloat>] [--priceLevel <String>] [--isFavorite <Boolean>] [--notes <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--location <GeographyInterface>]
agentic-db venue update --id <UUID> [--entityId <UUID>] [--name <String>] [--address <String>] [--neighborhood <String>] [--city <String>] [--category <String>] [--status <String>] [--googlePlaceId <String>] [--rating <BigFloat>] [--priceLevel <String>] [--isFavorite <Boolean>] [--notes <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--location <GeographyInterface>]
agentic-db venue delete --id <UUID>
```

## Examples

### List all venue records

```bash
agentic-db venue list
```

### Create a venue

```bash
agentic-db venue create --entityId <UUID> --name <String> [--address <String>] [--neighborhood <String>] [--city <String>] [--category <String>] [--status <String>] [--googlePlaceId <String>] [--rating <BigFloat>] [--priceLevel <String>] [--isFavorite <Boolean>] [--notes <String>] [--tags <String>] [--mainImageId <UUID>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>] [--location <GeographyInterface>]
```

### Get a venue by id

```bash
agentic-db venue get --id <value>
```
