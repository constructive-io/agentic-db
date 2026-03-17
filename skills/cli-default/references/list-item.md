# listItem

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ListItem records via agentic-db CLI

## Usage

```bash
agentic-db list-item list
agentic-db list-item get --id <value>
agentic-db list-item create --entityId <value> --listId <value> --contentTrgmSimilarity <value> --refTypeTrgmSimilarity <value> --searchScore <value> [--content <value>] [--position <value>] [--isChecked <value>] [--refId <value>] [--refType <value>]
agentic-db list-item update --id <value> [--entityId <value>] [--listId <value>] [--content <value>] [--position <value>] [--isChecked <value>] [--refId <value>] [--refType <value>] [--contentTrgmSimilarity <value>] [--refTypeTrgmSimilarity <value>] [--searchScore <value>]
agentic-db list-item delete --id <value>
```

## Examples

### List all listItem records

```bash
agentic-db list-item list
```

### Create a listItem

```bash
agentic-db list-item create --entityId <value> --listId <value> --contentTrgmSimilarity <value> --refTypeTrgmSimilarity <value> --searchScore <value> [--content <value>] [--position <value>] [--isChecked <value>] [--refId <value>] [--refType <value>]
```

### Get a listItem by id

```bash
agentic-db list-item get --id <value>
```
