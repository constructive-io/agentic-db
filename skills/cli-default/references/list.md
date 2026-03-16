# list

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for List records via agentic-db CLI

## Usage

```bash
agentic-db list list
agentic-db list get --id <value>
agentic-db list create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --typeTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--type <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db list update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--type <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--typeTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db list delete --id <value>
```

## Examples

### List all list records

```bash
agentic-db list list
```

### Create a list

```bash
agentic-db list create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --typeTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--type <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a list by id

```bash
agentic-db list get --id <value>
```
