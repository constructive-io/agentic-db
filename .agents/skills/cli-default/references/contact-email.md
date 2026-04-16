# contactEmail

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactEmail records via agentic-db CLI

## Usage

```bash
agentic-db contact-email list
agentic-db contact-email list --where.<field>.<op> <value> --orderBy <values>
agentic-db contact-email list --limit 10 --after <cursor>
agentic-db contact-email find-first --where.<field>.<op> <value>
agentic-db contact-email get --id <UUID>
agentic-db contact-email create --email <String> --contactId <UUID> [--emailType <String>] [--isPrimary <Boolean>]
agentic-db contact-email update --id <UUID> [--email <String>] [--emailType <String>] [--isPrimary <Boolean>] [--contactId <UUID>]
agentic-db contact-email delete --id <UUID>
```

## Examples

### List contactEmail records

```bash
agentic-db contact-email list
```

### List contactEmail records with pagination

```bash
agentic-db contact-email list --limit 10 --offset 0
```

### List contactEmail records with cursor pagination

```bash
agentic-db contact-email list --limit 10 --after <cursor>
```

### Find first matching contactEmail

```bash
agentic-db contact-email find-first --where.id.equalTo <value>
```

### List contactEmail records with field selection

```bash
agentic-db contact-email list --select id,id
```

### List contactEmail records with filtering and ordering

```bash
agentic-db contact-email list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a contactEmail

```bash
agentic-db contact-email create --email <String> --contactId <UUID> [--emailType <String>] [--isPrimary <Boolean>]
```

### Get a contactEmail by id

```bash
agentic-db contact-email get --id <value>
```
