# emailNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EmailNote records via agentic-db CLI

## Usage

```bash
agentic-db email-note list
agentic-db email-note list --where.<field>.<op> <value> --orderBy <values>
agentic-db email-note list --limit 10 --after <cursor>
agentic-db email-note find-first --where.<field>.<op> <value>
agentic-db email-note get --id <UUID>
agentic-db email-note create --emailId <UUID> --noteId <UUID> --entityId <UUID>
agentic-db email-note update --id <UUID> [--emailId <UUID>] [--noteId <UUID>] [--entityId <UUID>]
agentic-db email-note delete --id <UUID>
```

## Examples

### List emailNote records

```bash
agentic-db email-note list
```

### List emailNote records with pagination

```bash
agentic-db email-note list --limit 10 --offset 0
```

### List emailNote records with cursor pagination

```bash
agentic-db email-note list --limit 10 --after <cursor>
```

### Find first matching emailNote

```bash
agentic-db email-note find-first --where.id.equalTo <value>
```

### List emailNote records with field selection

```bash
agentic-db email-note list --select id,id
```

### List emailNote records with filtering and ordering

```bash
agentic-db email-note list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a emailNote

```bash
agentic-db email-note create --emailId <UUID> --noteId <UUID> --entityId <UUID>
```

### Get a emailNote by id

```bash
agentic-db email-note get --id <value>
```
