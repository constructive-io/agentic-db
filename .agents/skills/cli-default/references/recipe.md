# recipe

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Recipe records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `nameTrgmSimilarity`, `descriptionTrgmSimilarity`, `cuisineTrgmSimilarity`, `difficultyTrgmSimilarity`, `sourceUrlTrgmSimilarity`, `imageUrlTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db recipe list
agentic-db recipe get --id <UUID>
agentic-db recipe create --entityId <UUID> --name <String> [--description <String>] [--cuisine <String>] [--prepTimeMinutes <Int>] [--cookTimeMinutes <Int>] [--servings <Int>] [--difficulty <String>] [--ingredients <JSON>] [--instructions <JSON>] [--sourceUrl <String>] [--imageUrl <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db recipe update --id <UUID> [--entityId <UUID>] [--name <String>] [--description <String>] [--cuisine <String>] [--prepTimeMinutes <Int>] [--cookTimeMinutes <Int>] [--servings <Int>] [--difficulty <String>] [--ingredients <JSON>] [--instructions <JSON>] [--sourceUrl <String>] [--imageUrl <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
agentic-db recipe delete --id <UUID>
```

## Examples

### List all recipe records

```bash
agentic-db recipe list
```

### Create a recipe

```bash
agentic-db recipe create --entityId <UUID> --name <String> [--description <String>] [--cuisine <String>] [--prepTimeMinutes <Int>] [--cookTimeMinutes <Int>] [--servings <Int>] [--difficulty <String>] [--ingredients <JSON>] [--instructions <JSON>] [--sourceUrl <String>] [--imageUrl <String>] [--tags <String>] [--embeddingText <String>] [--embedding <Vector>]
```

### Get a recipe by id

```bash
agentic-db recipe get --id <value>
```
