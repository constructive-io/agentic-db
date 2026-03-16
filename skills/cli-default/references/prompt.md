# prompt

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Prompt records via agentic-db CLI

## Usage

```bash
agentic-db prompt list
agentic-db prompt get --id <value>
agentic-db prompt create --entityId <value> --name <value> --content <value> --contentBm25Score <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --contentTrgmSimilarity <value> --typeTrgmSimilarity <value> --modelTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--type <value>] [--model <value>] [--version <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db prompt update --id <value> [--entityId <value>] [--name <value>] [--content <value>] [--type <value>] [--model <value>] [--version <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--contentBm25Score <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--contentTrgmSimilarity <value>] [--typeTrgmSimilarity <value>] [--modelTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db prompt delete --id <value>
```

## Examples

### List all prompt records

```bash
agentic-db prompt list
```

### Create a prompt

```bash
agentic-db prompt create --entityId <value> --name <value> --content <value> --contentBm25Score <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --contentTrgmSimilarity <value> --typeTrgmSimilarity <value> --modelTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--type <value>] [--model <value>] [--version <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a prompt by id

```bash
agentic-db prompt get --id <value>
```
