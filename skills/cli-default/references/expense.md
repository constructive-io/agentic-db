# expense

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Expense records via agentic-db CLI

## Usage

```bash
agentic-db expense list
agentic-db expense get --id <value>
agentic-db expense create --entityId <value> --amount <value> --currency <value> --date <value> --category <value> --description <value> --merchant <value> --receiptUrl <value> --tags <value> --embedding <value> --embeddingDistance <value>
agentic-db expense update --id <value> [--entityId <value>] [--amount <value>] [--currency <value>] [--date <value>] [--category <value>] [--description <value>] [--merchant <value>] [--receiptUrl <value>] [--tags <value>] [--embedding <value>] [--embeddingDistance <value>]
agentic-db expense delete --id <value>
```

## Examples

### List all expense records

```bash
agentic-db expense list
```

### Create a expense

```bash
agentic-db expense create --entityId "value" --amount "value" --currency "value" --date "value" --category "value" --description "value" --merchant "value" --receiptUrl "value" --tags "value" --embedding "value" --embeddingDistance "value"
```

### Get a expense by id

```bash
agentic-db expense get --id <value>
```
