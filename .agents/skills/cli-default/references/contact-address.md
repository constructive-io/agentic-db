# contactAddress

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactAddress records via agentic-db CLI

## Usage

```bash
agentic-db contact-address list
agentic-db contact-address list --where.<field>.<op> <value> --orderBy <values>
agentic-db contact-address list --limit 10 --after <cursor>
agentic-db contact-address find-first --where.<field>.<op> <value>
agentic-db contact-address get --id <UUID>
agentic-db contact-address create --contactId <UUID> [--street <String>] [--city <String>] [--state <String>] [--postalCode <String>] [--country <String>] [--addressType <String>] [--isPrimary <Boolean>]
agentic-db contact-address update --id <UUID> [--street <String>] [--city <String>] [--state <String>] [--postalCode <String>] [--country <String>] [--addressType <String>] [--isPrimary <Boolean>] [--contactId <UUID>]
agentic-db contact-address delete --id <UUID>
```

## Examples

### List contactAddress records

```bash
agentic-db contact-address list
```

### List contactAddress records with pagination

```bash
agentic-db contact-address list --limit 10 --offset 0
```

### List contactAddress records with cursor pagination

```bash
agentic-db contact-address list --limit 10 --after <cursor>
```

### Find first matching contactAddress

```bash
agentic-db contact-address find-first --where.id.equalTo <value>
```

### List contactAddress records with field selection

```bash
agentic-db contact-address list --select id,id
```

### List contactAddress records with filtering and ordering

```bash
agentic-db contact-address list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a contactAddress

```bash
agentic-db contact-address create --contactId <UUID> [--street <String>] [--city <String>] [--state <String>] [--postalCode <String>] [--country <String>] [--addressType <String>] [--isPrimary <Boolean>]
```

### Get a contactAddress by id

```bash
agentic-db contact-address get --id <value>
```
