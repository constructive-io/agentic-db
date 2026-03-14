# attachment

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Attachment records via agent-os CLI

## Usage

```bash
agent-os attachment list
agent-os attachment get --id <value>
agent-os attachment create --entityId <value> --url <value> [--filename <value>] [--mimeType <value>] [--sizeBytes <value>] [--attachableType <value>] [--attachableId <value>]
agent-os attachment update --id <value> [--entityId <value>] [--url <value>] [--filename <value>] [--mimeType <value>] [--sizeBytes <value>] [--attachableType <value>] [--attachableId <value>]
agent-os attachment delete --id <value>
```

## Examples

### List all attachment records

```bash
agent-os attachment list
```

### Create a attachment

```bash
agent-os attachment create --entityId <value> --url <value> [--filename <value>] [--mimeType <value>] [--sizeBytes <value>] [--attachableType <value>] [--attachableId <value>]
```

### Get a attachment by id

```bash
agent-os attachment get --id <value>
```
