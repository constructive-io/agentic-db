# deal

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Deal records via agent-db CLI

## Usage

```bash
agent-db deal list
agent-db deal get --id <value>
agent-db deal create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --stageTrgmSimilarity <value> --currencyTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--stage <value>] [--value <value>] [--currency <value>] [--expectedCloseDate <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db deal update --id <value> [--entityId <value>] [--name <value>] [--stage <value>] [--value <value>] [--currency <value>] [--expectedCloseDate <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--stageTrgmSimilarity <value>] [--currencyTrgmSimilarity <value>] [--notesTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db deal delete --id <value>
```

## Examples

### List all deal records

```bash
agent-db deal list
```

### Create a deal

```bash
agent-db deal create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --stageTrgmSimilarity <value> --currencyTrgmSimilarity <value> --notesTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--stage <value>] [--value <value>] [--currency <value>] [--expectedCloseDate <value>] [--notes <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a deal by id

```bash
agent-db deal get --id <value>
```
