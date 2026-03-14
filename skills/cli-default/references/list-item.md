# listItem

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ListItem records via agent-os CLI

## Usage

```bash
agent-os list-item list
agent-os list-item get --id <value>
agent-os list-item create --entityId <value> --listId <value> [--content <value>] [--position <value>] [--isChecked <value>] [--refId <value>] [--refType <value>]
agent-os list-item update --id <value> [--entityId <value>] [--listId <value>] [--content <value>] [--position <value>] [--isChecked <value>] [--refId <value>] [--refType <value>]
agent-os list-item delete --id <value>
```

## Examples

### List all listItem records

```bash
agent-os list-item list
```

### Create a listItem

```bash
agent-os list-item create --entityId <value> --listId <value> [--content <value>] [--position <value>] [--isChecked <value>] [--refId <value>] [--refType <value>]
```

### Get a listItem by id

```bash
agent-os list-item get --id <value>
```
