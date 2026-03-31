# dealContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for DealContact records via agentic-db CLI

## Usage

```bash
agentic-db deal-contact list
agentic-db deal-contact list --where.<field>.<op> <value> --orderBy <values>
agentic-db deal-contact list --limit 10 --after <cursor>
agentic-db deal-contact find-first --where.<field>.<op> <value>
agentic-db deal-contact get --id <UUID>
agentic-db deal-contact create --dealId <UUID> --contactId <UUID> --entityId <UUID>
agentic-db deal-contact update --id <UUID> [--dealId <UUID>] [--contactId <UUID>] [--entityId <UUID>]
agentic-db deal-contact delete --id <UUID>
```

## Examples

### List dealContact records

```bash
agentic-db deal-contact list
```

### List dealContact records with pagination

```bash
agentic-db deal-contact list --limit 10 --offset 0
```

### List dealContact records with cursor pagination

```bash
agentic-db deal-contact list --limit 10 --after <cursor>
```

### Find first matching dealContact

```bash
agentic-db deal-contact find-first --where.id.equalTo <value>
```

### List dealContact records with field selection

```bash
agentic-db deal-contact list --select id,id
```

### List dealContact records with filtering and ordering

```bash
agentic-db deal-contact list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a dealContact

```bash
agentic-db deal-contact create --dealId <UUID> --contactId <UUID> --entityId <UUID>
```

### Get a dealContact by id

```bash
agentic-db deal-contact get --id <value>
```
