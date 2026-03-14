# expense

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Expense records via agent-os CLI

## Usage

```bash
agent-os expense list
agent-os expense get --id <value>
agent-os expense create --entityId <value> [--amount <value>] [--currency <value>] [--date <value>] [--category <value>] [--description <value>] [--merchant <value>] [--receiptUrl <value>] [--isRecurring <value>] [--tags <value>]
agent-os expense update --id <value> [--entityId <value>] [--amount <value>] [--currency <value>] [--date <value>] [--category <value>] [--description <value>] [--merchant <value>] [--receiptUrl <value>] [--isRecurring <value>] [--tags <value>]
agent-os expense delete --id <value>
```

## Examples

### List all expense records

```bash
agent-os expense list
```

### Create a expense

```bash
agent-os expense create --entityId <value> [--amount <value>] [--currency <value>] [--date <value>] [--category <value>] [--description <value>] [--merchant <value>] [--receiptUrl <value>] [--isRecurring <value>] [--tags <value>]
```

### Get a expense by id

```bash
agent-os expense get --id <value>
```
