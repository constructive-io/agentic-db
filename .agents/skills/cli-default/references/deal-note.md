# dealNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for DealNote records via agentic-db CLI

## Usage

```bash
agentic-db deal-note list
agentic-db deal-note list --where.<field>.<op> <value> --orderBy <values>
agentic-db deal-note list --limit 10 --after <cursor>
agentic-db deal-note find-first --where.<field>.<op> <value>
agentic-db deal-note get --id <UUID>
agentic-db deal-note create --dealId <UUID> --noteId <UUID>
agentic-db deal-note update --id <UUID> [--dealId <UUID>] [--noteId <UUID>]
agentic-db deal-note delete --id <UUID>
```

## Examples

### List dealNote records

```bash
agentic-db deal-note list
```

### List dealNote records with pagination

```bash
agentic-db deal-note list --limit 10 --offset 0
```

### List dealNote records with cursor pagination

```bash
agentic-db deal-note list --limit 10 --after <cursor>
```

### Find first matching dealNote

```bash
agentic-db deal-note find-first --where.id.equalTo <value>
```

### List dealNote records with field selection

```bash
agentic-db deal-note list --select id,id
```

### List dealNote records with filtering and ordering

```bash
agentic-db deal-note list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a dealNote

```bash
agentic-db deal-note create --dealId <UUID> --noteId <UUID>
```

### Get a dealNote by id

```bash
agentic-db deal-note get --id <value>
```
