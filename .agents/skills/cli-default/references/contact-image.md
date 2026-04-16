# contactImage

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ContactImage records via agentic-db CLI

## Usage

```bash
agentic-db contact-image list
agentic-db contact-image list --where.<field>.<op> <value> --orderBy <values>
agentic-db contact-image list --limit 10 --after <cursor>
agentic-db contact-image find-first --where.<field>.<op> <value>
agentic-db contact-image get --id <UUID>
agentic-db contact-image create --contactId <UUID> --imageId <UUID>
agentic-db contact-image update --id <UUID> [--contactId <UUID>] [--imageId <UUID>]
agentic-db contact-image delete --id <UUID>
```

## Examples

### List contactImage records

```bash
agentic-db contact-image list
```

### List contactImage records with pagination

```bash
agentic-db contact-image list --limit 10 --offset 0
```

### List contactImage records with cursor pagination

```bash
agentic-db contact-image list --limit 10 --after <cursor>
```

### Find first matching contactImage

```bash
agentic-db contact-image find-first --where.id.equalTo <value>
```

### List contactImage records with field selection

```bash
agentic-db contact-image list --select id,id
```

### List contactImage records with filtering and ordering

```bash
agentic-db contact-image list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a contactImage

```bash
agentic-db contact-image create --contactId <UUID> --imageId <UUID>
```

### Get a contactImage by id

```bash
agentic-db contact-image get --id <value>
```
