# rawContactPhone

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RawContactPhone records via agentic-db CLI

## Usage

```bash
agentic-db raw-contact-phone list
agentic-db raw-contact-phone list --where.<field>.<op> <value> --orderBy <values>
agentic-db raw-contact-phone list --limit 10 --after <cursor>
agentic-db raw-contact-phone find-first --where.<field>.<op> <value>
agentic-db raw-contact-phone get --id <UUID>
agentic-db raw-contact-phone create --phone <String> --rawContactId <UUID> [--phoneType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>]
agentic-db raw-contact-phone update --id <UUID> [--phone <String>] [--phoneType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>] [--rawContactId <UUID>]
agentic-db raw-contact-phone delete --id <UUID>
```

## Examples

### List rawContactPhone records

```bash
agentic-db raw-contact-phone list
```

### List rawContactPhone records with pagination

```bash
agentic-db raw-contact-phone list --limit 10 --offset 0
```

### List rawContactPhone records with cursor pagination

```bash
agentic-db raw-contact-phone list --limit 10 --after <cursor>
```

### Find first matching rawContactPhone

```bash
agentic-db raw-contact-phone find-first --where.id.equalTo <value>
```

### List rawContactPhone records with field selection

```bash
agentic-db raw-contact-phone list --select id,id
```

### List rawContactPhone records with filtering and ordering

```bash
agentic-db raw-contact-phone list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a rawContactPhone

```bash
agentic-db raw-contact-phone create --phone <String> --rawContactId <UUID> [--phoneType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>]
```

### Get a rawContactPhone by id

```bash
agentic-db raw-contact-phone get --id <value>
```
