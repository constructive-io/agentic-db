# trip

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Trip records via agent-db CLI

## Usage

```bash
agent-db trip list
agent-db trip get --id <value>
agent-db trip create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --destinationTrgmSimilarity <value> --statusTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--destination <value>] [--startDate <value>] [--endDate <value>] [--status <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db trip update --id <value> [--entityId <value>] [--name <value>] [--destination <value>] [--startDate <value>] [--endDate <value>] [--status <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--destinationTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--notesTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db trip delete --id <value>
```

## Examples

### List all trip records

```bash
agent-db trip list
```

### Create a trip

```bash
agent-db trip create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --destinationTrgmSimilarity <value> --statusTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--destination <value>] [--startDate <value>] [--endDate <value>] [--status <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a trip by id

```bash
agent-db trip get --id <value>
```
