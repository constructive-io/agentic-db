# expenseContact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ExpenseContact records via agentic-db CLI

## Usage

```bash
agentic-db expense-contact list
agentic-db expense-contact get --id <UUID>
agentic-db expense-contact create --expenseId <UUID> --contactId <UUID> --entityId <UUID>
agentic-db expense-contact update --id <UUID> [--expenseId <UUID>] [--contactId <UUID>] [--entityId <UUID>]
agentic-db expense-contact delete --id <UUID>
```

## Examples

### List all expenseContact records

```bash
agentic-db expense-contact list
```

### Create a expenseContact

```bash
agentic-db expense-contact create --expenseId <UUID> --contactId <UUID> --entityId <UUID>
```

### Get a expenseContact by id

```bash
agentic-db expense-contact get --id <value>
```
