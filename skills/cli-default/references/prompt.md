# prompt

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Prompt records via agent-db CLI

## Usage

```bash
agent-db prompt list
agent-db prompt get --id <value>
agent-db prompt create --entityId <value> --name <value> --content <value> --contentBm25Score <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --contentTrgmSimilarity <value> --typeTrgmSimilarity <value> --modelTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--type <value>] [--model <value>] [--version <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db prompt update --id <value> [--entityId <value>] [--name <value>] [--content <value>] [--type <value>] [--model <value>] [--version <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--contentBm25Score <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--contentTrgmSimilarity <value>] [--typeTrgmSimilarity <value>] [--modelTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db prompt delete --id <value>
```

## Examples

### List all prompt records

```bash
agent-db prompt list
```

### Create a prompt

```bash
agent-db prompt create --entityId <value> --name <value> --content <value> --contentBm25Score <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --contentTrgmSimilarity <value> --typeTrgmSimilarity <value> --modelTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--type <value>] [--model <value>] [--version <value>] [--isActive <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a prompt by id

```bash
agent-db prompt get --id <value>
```
