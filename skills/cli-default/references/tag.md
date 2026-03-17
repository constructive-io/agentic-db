# tag

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Tag records via agentic-db CLI

## Usage

```bash
agentic-db tag list
agentic-db tag get --id <value>
agentic-db tag create --entityId <value> --name <value> --nameTrgmSimilarity <value> --colorTrgmSimilarity <value> --categoryTrgmSimilarity <value> --searchScore <value> [--color <value>] [--category <value>] [--usageCount <value>]
agentic-db tag update --id <value> [--entityId <value>] [--name <value>] [--color <value>] [--category <value>] [--usageCount <value>] [--nameTrgmSimilarity <value>] [--colorTrgmSimilarity <value>] [--categoryTrgmSimilarity <value>] [--searchScore <value>]
agentic-db tag delete --id <value>
```

## Examples

### List all tag records

```bash
agentic-db tag list
```

### Create a tag

```bash
agentic-db tag create --entityId <value> --name <value> --nameTrgmSimilarity <value> --colorTrgmSimilarity <value> --categoryTrgmSimilarity <value> --searchScore <value> [--color <value>] [--category <value>] [--usageCount <value>]
```

### Get a tag by id

```bash
agentic-db tag get --id <value>
```
