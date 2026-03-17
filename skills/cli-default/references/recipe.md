# recipe

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Recipe records via agentic-db CLI

## Usage

```bash
agentic-db recipe list
agentic-db recipe get --id <value>
agentic-db recipe create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --cuisineTrgmSimilarity <value> --difficultyTrgmSimilarity <value> --sourceUrlTrgmSimilarity <value> --imageUrlTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--cuisine <value>] [--prepTimeMinutes <value>] [--cookTimeMinutes <value>] [--servings <value>] [--difficulty <value>] [--ingredients <value>] [--instructions <value>] [--sourceUrl <value>] [--imageUrl <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agentic-db recipe update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--cuisine <value>] [--prepTimeMinutes <value>] [--cookTimeMinutes <value>] [--servings <value>] [--difficulty <value>] [--ingredients <value>] [--instructions <value>] [--sourceUrl <value>] [--imageUrl <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingTextBm25Score <value>] [--nameTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--cuisineTrgmSimilarity <value>] [--difficultyTrgmSimilarity <value>] [--sourceUrlTrgmSimilarity <value>] [--imageUrlTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db recipe delete --id <value>
```

## Examples

### List all recipe records

```bash
agentic-db recipe list
```

### Create a recipe

```bash
agentic-db recipe create --entityId <value> --name <value> --embeddingTextBm25Score <value> --nameTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --cuisineTrgmSimilarity <value> --difficultyTrgmSimilarity <value> --sourceUrlTrgmSimilarity <value> --imageUrlTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--description <value>] [--cuisine <value>] [--prepTimeMinutes <value>] [--cookTimeMinutes <value>] [--servings <value>] [--difficulty <value>] [--ingredients <value>] [--instructions <value>] [--sourceUrl <value>] [--imageUrl <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a recipe by id

```bash
agentic-db recipe get --id <value>
```
