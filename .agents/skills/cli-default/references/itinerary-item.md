# itineraryItem

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ItineraryItem records via agentic-db CLI

**Unified Search API fields:** `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db itinerary-item list
agentic-db itinerary-item get --id <UUID>
agentic-db itinerary-item create --entityId <UUID> --tripId <UUID> --name <String> [--description <String>] [--dayNumber <Int>] [--startTime <Datetime>] [--endTime <Datetime>] [--placeId <UUID>] [--category <String>] [--cost <BigFloat>] [--notes <String>] [--sortOrder <Int>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db itinerary-item update --id <UUID> [--entityId <UUID>] [--tripId <UUID>] [--name <String>] [--description <String>] [--dayNumber <Int>] [--startTime <Datetime>] [--endTime <Datetime>] [--placeId <UUID>] [--category <String>] [--cost <BigFloat>] [--notes <String>] [--sortOrder <Int>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db itinerary-item delete --id <UUID>
```

## Examples

### List all itineraryItem records

```bash
agentic-db itinerary-item list
```

### Create a itineraryItem

```bash
agentic-db itinerary-item create --entityId <UUID> --tripId <UUID> --name <String> [--description <String>] [--dayNumber <Int>] [--startTime <Datetime>] [--endTime <Datetime>] [--placeId <UUID>] [--category <String>] [--cost <BigFloat>] [--notes <String>] [--sortOrder <Int>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a itineraryItem by id

```bash
agentic-db itinerary-item get --id <value>
```
