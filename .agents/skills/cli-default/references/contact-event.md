# contactEvent

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactEvent records via agentic-db CLI

## Usage

```bash
agentic-db contact-event list
agentic-db contact-event list --where.<field>.<op> <value> --orderBy <values>
agentic-db contact-event list --limit 10 --after <cursor>
agentic-db contact-event find-first --where.<field>.<op> <value>
agentic-db contact-event get --id <UUID>
agentic-db contact-event create --contactId <UUID> --eventId <UUID> --entityId <UUID>
agentic-db contact-event update --id <UUID> [--contactId <UUID>] [--eventId <UUID>] [--entityId <UUID>]
agentic-db contact-event delete --id <UUID>
```

## Examples

### List contactEvent records

```bash
agentic-db contact-event list
```

### List contactEvent records with pagination

```bash
agentic-db contact-event list --limit 10 --offset 0
```

### List contactEvent records with cursor pagination

```bash
agentic-db contact-event list --limit 10 --after <cursor>
```

### Find first matching contactEvent

```bash
agentic-db contact-event find-first --where.id.equalTo <value>
```

### List contactEvent records with field selection

```bash
agentic-db contact-event list --select id,id
```

### List contactEvent records with filtering and ordering

```bash
agentic-db contact-event list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a contactEvent

```bash
agentic-db contact-event create --contactId <UUID> --eventId <UUID> --entityId <UUID>
```

### Get a contactEvent by id

```bash
agentic-db contact-event get --id <value>
```
