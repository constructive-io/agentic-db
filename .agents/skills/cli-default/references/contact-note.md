# contactNote

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactNote records via agentic-db CLI

## Usage

```bash
agentic-db contact-note list
agentic-db contact-note list --where.<field>.<op> <value> --orderBy <values>
agentic-db contact-note list --limit 10 --after <cursor>
agentic-db contact-note find-first --where.<field>.<op> <value>
agentic-db contact-note get --id <UUID>
agentic-db contact-note create --contactId <UUID> --noteId <UUID>
agentic-db contact-note update --id <UUID> [--contactId <UUID>] [--noteId <UUID>]
agentic-db contact-note delete --id <UUID>
```

## Examples

### List contactNote records

```bash
agentic-db contact-note list
```

### List contactNote records with pagination

```bash
agentic-db contact-note list --limit 10 --offset 0
```

### List contactNote records with cursor pagination

```bash
agentic-db contact-note list --limit 10 --after <cursor>
```

### Find first matching contactNote

```bash
agentic-db contact-note find-first --where.id.equalTo <value>
```

### List contactNote records with field selection

```bash
agentic-db contact-note list --select id,id
```

### List contactNote records with filtering and ordering

```bash
agentic-db contact-note list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a contactNote

```bash
agentic-db contact-note create --contactId <UUID> --noteId <UUID>
```

### Get a contactNote by id

```bash
agentic-db contact-note get --id <value>
```
