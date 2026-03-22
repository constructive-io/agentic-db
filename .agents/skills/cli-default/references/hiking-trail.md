# hikingTrail

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for HikingTrail records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `difficultyTrgmSimilarity`, `trailTypeTrgmSimilarity`, `regionTrgmSimilarity`, `notesTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db hiking-trail list
agentic-db hiking-trail get --id <UUID>
agentic-db hiking-trail create --entityId <UUID> --name <String> [--description <String>] [--difficulty <String>] [--distanceKm <BigFloat>] [--elevationGainm <BigFloat>] [--estimatedTimeHours <BigFloat>] [--trailType <String>] [--region <String>] [--notes <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db hiking-trail update --id <UUID> [--entityId <UUID>] [--name <String>] [--description <String>] [--difficulty <String>] [--distanceKm <BigFloat>] [--elevationGainm <BigFloat>] [--estimatedTimeHours <BigFloat>] [--trailType <String>] [--region <String>] [--notes <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db hiking-trail delete --id <UUID>
```

## Examples

### List all hikingTrail records

```bash
agentic-db hiking-trail list
```

### Create a hikingTrail

```bash
agentic-db hiking-trail create --entityId <UUID> --name <String> [--description <String>] [--difficulty <String>] [--distanceKm <BigFloat>] [--elevationGainm <BigFloat>] [--estimatedTimeHours <BigFloat>] [--trailType <String>] [--region <String>] [--notes <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a hikingTrail by id

```bash
agentic-db hiking-trail get --id <value>
```
