# rawContactEmail

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RawContactEmail records via agentic-db CLI

## Usage

```bash
agentic-db raw-contact-email list
agentic-db raw-contact-email list --where.<field>.<op> <value> --orderBy <values>
agentic-db raw-contact-email list --limit 10 --after <cursor>
agentic-db raw-contact-email find-first --where.<field>.<op> <value>
agentic-db raw-contact-email get --id <UUID>
agentic-db raw-contact-email create --email <String> --rawContactId <UUID> [--emailType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>]
agentic-db raw-contact-email update --id <UUID> [--email <String>] [--emailType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>] [--rawContactId <UUID>]
agentic-db raw-contact-email delete --id <UUID>
```

## Examples

### List rawContactEmail records

```bash
agentic-db raw-contact-email list
```

### List rawContactEmail records with pagination

```bash
agentic-db raw-contact-email list --limit 10 --offset 0
```

### List rawContactEmail records with cursor pagination

```bash
agentic-db raw-contact-email list --limit 10 --after <cursor>
```

### Find first matching rawContactEmail

```bash
agentic-db raw-contact-email find-first --where.id.equalTo <value>
```

### List rawContactEmail records with field selection

```bash
agentic-db raw-contact-email list --select id,id
```

### List rawContactEmail records with filtering and ordering

```bash
agentic-db raw-contact-email list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a rawContactEmail

```bash
agentic-db raw-contact-email create --email <String> --rawContactId <UUID> [--emailType <String>] [--isPrimary <Boolean>] [--source <String>] [--confidence <BigFloat>]
```

### Get a rawContactEmail by id

```bash
agentic-db raw-contact-email get --id <value>
```
