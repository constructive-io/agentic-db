# contactMemory

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactMemory records via agentic-db CLI

## Usage

```bash
agentic-db contact-memory list
agentic-db contact-memory list --where.<field>.<op> <value> --orderBy <values>
agentic-db contact-memory list --limit 10 --after <cursor>
agentic-db contact-memory find-first --where.<field>.<op> <value>
agentic-db contact-memory get --id <UUID>
agentic-db contact-memory create --contactId <UUID> --memoryId <UUID> --entityId <UUID>
agentic-db contact-memory update --id <UUID> [--contactId <UUID>] [--memoryId <UUID>] [--entityId <UUID>]
agentic-db contact-memory delete --id <UUID>
```

## Examples

### List contactMemory records

```bash
agentic-db contact-memory list
```

### List contactMemory records with pagination

```bash
agentic-db contact-memory list --limit 10 --offset 0
```

### List contactMemory records with cursor pagination

```bash
agentic-db contact-memory list --limit 10 --after <cursor>
```

### Find first matching contactMemory

```bash
agentic-db contact-memory find-first --where.id.equalTo <value>
```

### List contactMemory records with field selection

```bash
agentic-db contact-memory list --select id,id
```

### List contactMemory records with filtering and ordering

```bash
agentic-db contact-memory list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a contactMemory

```bash
agentic-db contact-memory create --contactId <UUID> --memoryId <UUID> --entityId <UUID>
```

### Get a contactMemory by id

```bash
agentic-db contact-memory get --id <value>
```
