# agent-os-note

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Note records via agent-os CLI

## Usage

```bash
agent-os note list
agent-os note get --id <value>
agent-os note create --entityId <value> --content <value> --contactId <value>
agent-os note update --id <value> [--entityId <value>] [--content <value>] [--contactId <value>]
agent-os note delete --id <value>
```

## Examples

### List all note records

```bash
agent-os note list
```

### Create a note

```bash
agent-os note create --entityId "value" --content "value" --contactId "value"
```

### Get a note by id

```bash
agent-os note get --id <value>
```

### Update a note

```bash
agent-os note update --id <value> --entityId "new-value"
```

### Delete a note

```bash
agent-os note delete --id <value>
```
