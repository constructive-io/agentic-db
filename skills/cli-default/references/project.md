# project

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Project records via agentic-db CLI

## Usage

```bash
agentic-db project list
agentic-db project get --id <value>
agentic-db project create --entityId <value> --name <value> --searchTsvRank <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --statusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--status <value>] [--startDate <value>] [--dueDate <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>]
agentic-db project update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--status <value>] [--startDate <value>] [--dueDate <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--searchTsvRank <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db project delete --id <value>
```

## Examples

### List all project records

```bash
agentic-db project list
```

### Create a project

```bash
agentic-db project create --entityId <value> --name <value> --searchTsvRank <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --statusTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--status <value>] [--startDate <value>] [--dueDate <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>]
```

### Get a project by id

```bash
agentic-db project get --id <value>
```
