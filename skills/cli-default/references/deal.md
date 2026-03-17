# deal

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Deal records via agentic-db CLI

## Usage

```bash
agentic-db deal list
agentic-db deal get --id <value>
agentic-db deal create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --stageTrgmSimilarity <value> --currencyTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--stage <value>] [--value <value>] [--currency <value>] [--expectedCloseDate <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db deal update --id <value> [--entityId <value>] [--name <value>] [--stage <value>] [--value <value>] [--currency <value>] [--expectedCloseDate <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--stageTrgmSimilarity <value>] [--currencyTrgmSimilarity <value>] [--notesTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db deal delete --id <value>
```

## Examples

### List all deal records

```bash
agentic-db deal list
```

### Create a deal

```bash
agentic-db deal create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --stageTrgmSimilarity <value> --currencyTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--stage <value>] [--value <value>] [--currency <value>] [--expectedCloseDate <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a deal by id

```bash
agentic-db deal get --id <value>
```
