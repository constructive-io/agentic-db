# emailRecipient

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for EmailRecipient records via agentic-db CLI

## Usage

```bash
agentic-db email-recipient list
agentic-db email-recipient list --where.<field>.<op> <value> --orderBy <values>
agentic-db email-recipient list --limit 10 --after <cursor>
agentic-db email-recipient find-first --where.<field>.<op> <value>
agentic-db email-recipient get --id <UUID>
agentic-db email-recipient create --emailId <UUID> --contactId <UUID>
agentic-db email-recipient update --id <UUID> [--emailId <UUID>] [--contactId <UUID>]
agentic-db email-recipient delete --id <UUID>
```

## Examples

### List emailRecipient records

```bash
agentic-db email-recipient list
```

### List emailRecipient records with pagination

```bash
agentic-db email-recipient list --limit 10 --offset 0
```

### List emailRecipient records with cursor pagination

```bash
agentic-db email-recipient list --limit 10 --after <cursor>
```

### Find first matching emailRecipient

```bash
agentic-db email-recipient find-first --where.id.equalTo <value>
```

### List emailRecipient records with field selection

```bash
agentic-db email-recipient list --select id,id
```

### List emailRecipient records with filtering and ordering

```bash
agentic-db email-recipient list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a emailRecipient

```bash
agentic-db email-recipient create --emailId <UUID> --contactId <UUID>
```

### Get a emailRecipient by id

```bash
agentic-db email-recipient get --id <value>
```
