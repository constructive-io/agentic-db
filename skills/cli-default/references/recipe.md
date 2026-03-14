# recipe

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Recipe records via agent-os CLI

## Usage

```bash
agent-os recipe list
agent-os recipe get --id <value>
agent-os recipe create --entityId <value> --name <value> --embeddingDistance <value> [--description <value>] [--cuisine <value>] [--prepTimeMinutes <value>] [--cookTimeMinutes <value>] [--servings <value>] [--difficulty <value>] [--ingredients <value>] [--instructions <value>] [--sourceUrl <value>] [--imageUrl <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
agent-os recipe update --id <value> [--entityId <value>] [--name <value>] [--description <value>] [--cuisine <value>] [--prepTimeMinutes <value>] [--cookTimeMinutes <value>] [--servings <value>] [--difficulty <value>] [--ingredients <value>] [--instructions <value>] [--sourceUrl <value>] [--imageUrl <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--embeddingDistance <value>]
agent-os recipe delete --id <value>
```

## Examples

### List all recipe records

```bash
agent-os recipe list
```

### Create a recipe

```bash
agent-os recipe create --entityId <value> --name <value> --embeddingDistance <value> [--description <value>] [--cuisine <value>] [--prepTimeMinutes <value>] [--cookTimeMinutes <value>] [--servings <value>] [--difficulty <value>] [--ingredients <value>] [--instructions <value>] [--sourceUrl <value>] [--imageUrl <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>]
```

### Get a recipe by id

```bash
agent-os recipe get --id <value>
```
