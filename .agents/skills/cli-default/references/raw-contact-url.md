# rawContactUrl

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for RawContactUrl records via agentic-db CLI

## Usage

```bash
agentic-db raw-contact-url list
agentic-db raw-contact-url list --where.<field>.<op> <value> --orderBy <values>
agentic-db raw-contact-url list --limit 10 --after <cursor>
agentic-db raw-contact-url find-first --where.<field>.<op> <value>
agentic-db raw-contact-url get --id <UUID>
agentic-db raw-contact-url create --url <String> --rawContactId <UUID> [--urlType <String>] [--source <String>] [--confidence <BigFloat>]
agentic-db raw-contact-url update --id <UUID> [--url <String>] [--urlType <String>] [--source <String>] [--confidence <BigFloat>] [--rawContactId <UUID>]
agentic-db raw-contact-url delete --id <UUID>
```

## Examples

### List rawContactUrl records

```bash
agentic-db raw-contact-url list
```

### List rawContactUrl records with pagination

```bash
agentic-db raw-contact-url list --limit 10 --offset 0
```

### List rawContactUrl records with cursor pagination

```bash
agentic-db raw-contact-url list --limit 10 --after <cursor>
```

### Find first matching rawContactUrl

```bash
agentic-db raw-contact-url find-first --where.id.equalTo <value>
```

### List rawContactUrl records with field selection

```bash
agentic-db raw-contact-url list --select id,id
```

### List rawContactUrl records with filtering and ordering

```bash
agentic-db raw-contact-url list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a rawContactUrl

```bash
agentic-db raw-contact-url create --url <String> --rawContactId <UUID> [--urlType <String>] [--source <String>] [--confidence <BigFloat>]
```

### Get a rawContactUrl by id

```bash
agentic-db raw-contact-url get --id <value>
```
