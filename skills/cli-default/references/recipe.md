# recipe

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Recipe records via agent-db CLI

## Usage

```bash
agent-db recipe list
agent-db recipe get --id <value>
agent-db recipe create --entityId <value> --name <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --cuisineTrgmSimilarity <value> --difficultyTrgmSimilarity <value> --sourceUrlTrgmSimilarity <value> --imageUrlTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--cuisine <value>] [--prepTimeMinutes <value>] [--cookTimeMinutes <value>] [--servings <value>] [--difficulty <value>] [--ingredients <value>] [--instructions <value>] [--sourceUrl <value>] [--imageUrl <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-db recipe update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--cuisine <value>] [--prepTimeMinutes <value>] [--cookTimeMinutes <value>] [--servings <value>] [--difficulty <value>] [--ingredients <value>] [--instructions <value>] [--sourceUrl <value>] [--imageUrl <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--nameTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--cuisineTrgmSimilarity <value>] [--difficultyTrgmSimilarity <value>] [--sourceUrlTrgmSimilarity <value>] [--imageUrlTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agent-db recipe delete --id <value>
```

## Examples

### List all recipe records

```bash
agent-db recipe list
```

### Create a recipe

```bash
agent-db recipe create --entityId <value> --name <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --cuisineTrgmSimilarity <value> --difficultyTrgmSimilarity <value> --sourceUrlTrgmSimilarity <value> --imageUrlTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--cuisine <value>] [--prepTimeMinutes <value>] [--cookTimeMinutes <value>] [--servings <value>] [--difficulty <value>] [--ingredients <value>] [--instructions <value>] [--sourceUrl <value>] [--imageUrl <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a recipe by id

```bash
agent-db recipe get --id <value>
```
