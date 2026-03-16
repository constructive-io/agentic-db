# trip

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Trip records via agentic-db CLI

## Usage

```bash
agentic-db trip list
agentic-db trip get --id <value>
agentic-db trip create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --destinationTrgmSimilarity <value> --statusTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--destination <value>] [--startDate <value>] [--endDate <value>] [--status <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db trip update --id <value> [--entityId <value>] [--name <value>] [--destination <value>] [--startDate <value>] [--endDate <value>] [--status <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--destinationTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--notesTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db trip delete --id <value>
```

## Examples

### List all trip records

```bash
agentic-db trip list
```

### Create a trip

```bash
agentic-db trip create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --destinationTrgmSimilarity <value> --statusTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--destination <value>] [--startDate <value>] [--endDate <value>] [--status <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a trip by id

```bash
agentic-db trip get --id <value>
```
