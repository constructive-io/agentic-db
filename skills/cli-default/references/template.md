# template

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Template records via agentic-db CLI

## Usage

```bash
agentic-db template list
agentic-db template get --id <value>
agentic-db template create --entityId <value> --name <value> --content <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --typeTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--type <value>] [--variables <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db template update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--type <value>] [--content <value>] [--variables <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--typeTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db template delete --id <value>
```

## Examples

### List all template records

```bash
agentic-db template list
```

### Create a template

```bash
agentic-db template create --entityId <value> --name <value> --content <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --typeTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--type <value>] [--variables <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a template by id

```bash
agentic-db template get --id <value>
```
