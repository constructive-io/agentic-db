# event

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Event records via agent-db CLI

## Usage

```bash
agent-db event list
agent-db event get --id <value>
agent-db event create --entityId <value> --name <value> --searchTsvRank <value> --nameTrgmSimilarity <value> --eventTypeTrgmSimilarity <value> --locationTrgmSimilarity <value> --cityTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--eventType <value>] [--location <value>] [--city <value>] [--startedAt <value>] [--endedAt <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
agent-db event update --id <value> [--entityId <value>] [--name <value>] [--eventType <value>] [--location <value>] [--city <value>] [--startedAt <value>] [--endedAt <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>] [--searchTsvRank <value>] [--nameTrgmSimilarity <value>] [--eventTypeTrgmSimilarity <value>] [--locationTrgmSimilarity <value>] [--cityTrgmSimilarity <value>] [--notesTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db event delete --id <value>
```

## Examples

### List all event records

```bash
agent-db event list
```

### Create a event

```bash
agent-db event create --entityId <value> --name <value> --searchTsvRank <value> --nameTrgmSimilarity <value> --eventTypeTrgmSimilarity <value> --locationTrgmSimilarity <value> --cityTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--eventType <value>] [--location <value>] [--city <value>] [--startedAt <value>] [--endedAt <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
```

### Get a event by id

```bash
agent-db event get --id <value>
```
