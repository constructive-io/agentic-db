# expenseContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ExpenseContact records via agentic-db CLI

## Usage

```bash
agentic-db expense-contact list
agentic-db expense-contact list --where.<field>.<op> <value> --orderBy <values>
agentic-db expense-contact list --limit 10 --after <cursor>
agentic-db expense-contact find-first --where.<field>.<op> <value>
agentic-db expense-contact get --id <UUID>
agentic-db expense-contact create --expenseId <UUID> --contactId <UUID> --entityId <UUID>
agentic-db expense-contact update --id <UUID> [--expenseId <UUID>] [--contactId <UUID>] [--entityId <UUID>]
agentic-db expense-contact delete --id <UUID>
```

## Examples

### List expenseContact records

```bash
agentic-db expense-contact list
```

### List expenseContact records with pagination

```bash
agentic-db expense-contact list --limit 10 --offset 0
```

### List expenseContact records with cursor pagination

```bash
agentic-db expense-contact list --limit 10 --after <cursor>
```

### Find first matching expenseContact

```bash
agentic-db expense-contact find-first --where.id.equalTo <value>
```

### List expenseContact records with field selection

```bash
agentic-db expense-contact list --select id,id
```

### List expenseContact records with filtering and ordering

```bash
agentic-db expense-contact list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a expenseContact

```bash
agentic-db expense-contact create --expenseId <UUID> --contactId <UUID> --entityId <UUID>
```

### Get a expenseContact by id

```bash
agentic-db expense-contact get --id <value>
```
