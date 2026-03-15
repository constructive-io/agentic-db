# listItem

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ListItem records via agent-db CLI

## Usage

```bash
agent-db list-item list
agent-db list-item get --id <value>
agent-db list-item create --entityId <value> --listId <value> --contentTrgmSimilarity <value> --refTypeTrgmSimilarity <value> --searchScore <value> [--content <value>] [--position <value>] [--isChecked <value>] [--refId <value>] [--refType <value>]
agent-db list-item update --id <value> [--entityId <value>] [--listId <value>] [--content <value>] [--position <value>] [--isChecked <value>] [--refId <value>] [--refType <value>] [--contentTrgmSimilarity <value>] [--refTypeTrgmSimilarity <value>] [--searchScore <value>]
agent-db list-item delete --id <value>
```

## Examples

### List all listItem records

```bash
agent-db list-item list
```

### Create a listItem

```bash
agent-db list-item create --entityId <value> --listId <value> --contentTrgmSimilarity <value> --refTypeTrgmSimilarity <value> --searchScore <value> [--content <value>] [--position <value>] [--isChecked <value>] [--refId <value>] [--refType <value>]
```

### Get a listItem by id

```bash
agent-db list-item get --id <value>
```
