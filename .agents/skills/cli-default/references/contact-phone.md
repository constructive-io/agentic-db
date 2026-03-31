# contactPhone

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactPhone records via agentic-db CLI

## Usage

```bash
agentic-db contact-phone list
agentic-db contact-phone list --where.<field>.<op> <value> --orderBy <values>
agentic-db contact-phone list --limit 10 --after <cursor>
agentic-db contact-phone find-first --where.<field>.<op> <value>
agentic-db contact-phone get --id <UUID>
agentic-db contact-phone create --entityId <UUID> --phone <String> --contactId <UUID> [--phoneType <String>] [--isPrimary <Boolean>]
agentic-db contact-phone update --id <UUID> [--entityId <UUID>] [--phone <String>] [--phoneType <String>] [--isPrimary <Boolean>] [--contactId <UUID>]
agentic-db contact-phone delete --id <UUID>
```

## Examples

### List contactPhone records

```bash
agentic-db contact-phone list
```

### List contactPhone records with pagination

```bash
agentic-db contact-phone list --limit 10 --offset 0
```

### List contactPhone records with cursor pagination

```bash
agentic-db contact-phone list --limit 10 --after <cursor>
```

### Find first matching contactPhone

```bash
agentic-db contact-phone find-first --where.id.equalTo <value>
```

### List contactPhone records with field selection

```bash
agentic-db contact-phone list --select id,id
```

### List contactPhone records with filtering and ordering

```bash
agentic-db contact-phone list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a contactPhone

```bash
agentic-db contact-phone create --entityId <UUID> --phone <String> --contactId <UUID> [--phoneType <String>] [--isPrimary <Boolean>]
```

### Get a contactPhone by id

```bash
agentic-db contact-phone get --id <value>
```
