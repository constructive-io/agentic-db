# expense

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Expense records via agentic-db CLI

## Usage

```bash
agentic-db expense list
agentic-db expense get --id <UUID>
agentic-db expense create --entityId <UUID> [--amount <BigFloat>] [--currency <String>] [--date <Date>] [--category <String>] [--description <String>] [--merchant <String>] [--receiptUrl <String>] [--isRecurring <Boolean>] [--tags <String>]
agentic-db expense update --id <UUID> [--entityId <UUID>] [--amount <BigFloat>] [--currency <String>] [--date <Date>] [--category <String>] [--description <String>] [--merchant <String>] [--receiptUrl <String>] [--isRecurring <Boolean>] [--tags <String>]
agentic-db expense delete --id <UUID>
```

## Examples

### List all expense records

```bash
agentic-db expense list
```

### Create a expense

```bash
agentic-db expense create --entityId <UUID> [--amount <BigFloat>] [--currency <String>] [--date <Date>] [--category <String>] [--description <String>] [--merchant <String>] [--receiptUrl <String>] [--isRecurring <Boolean>] [--tags <String>]
```

### Get a expense by id

```bash
agentic-db expense get --id <value>
```
