# dealNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for DealNote records via agentic-db CLI

## Usage

```bash
agentic-db deal-note list
agentic-db deal-note get --id <UUID>
agentic-db deal-note create --dealId <UUID> --noteId <UUID> --entityId <UUID>
agentic-db deal-note update --id <UUID> [--dealId <UUID>] [--noteId <UUID>] [--entityId <UUID>]
agentic-db deal-note delete --id <UUID>
```

## Examples

### List all dealNote records

```bash
agentic-db deal-note list
```

### Create a dealNote

```bash
agentic-db deal-note create --dealId <UUID> --noteId <UUID> --entityId <UUID>
```

### Get a dealNote by id

```bash
agentic-db deal-note get --id <value>
```
