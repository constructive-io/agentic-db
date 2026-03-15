# expense

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Expense records via agent-db CLI

## Usage

```bash
agent-db expense list
agent-db expense get --id <value>
agent-db expense create --entityId <value> --currencyTrgmSimilarity <value> --categoryTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --merchantTrgmSimilarity <value> --receiptUrlTrgmSimilarity <value> --searchScore <value> [--amount <value>] [--currency <value>] [--date <value>] [--category <value>] [--description <value>] [--merchant <value>] [--receiptUrl <value>] [--isRecurring <value>] [--tags <value>]
agent-db expense update --id <value> [--entityId <value>] [--amount <value>] [--currency <value>] [--date <value>] [--category <value>] [--description <value>] [--merchant <value>] [--receiptUrl <value>] [--isRecurring <value>] [--tags <value>] [--currencyTrgmSimilarity <value>] [--categoryTrgmSimilarity <value>] [--descriptionTrgmSimilarity <value>] [--merchantTrgmSimilarity <value>] [--receiptUrlTrgmSimilarity <value>] [--searchScore <value>]
agent-db expense delete --id <value>
```

## Examples

### List all expense records

```bash
agent-db expense list
```

### Create a expense

```bash
agent-db expense create --entityId <value> --currencyTrgmSimilarity <value> --categoryTrgmSimilarity <value> --descriptionTrgmSimilarity <value> --merchantTrgmSimilarity <value> --receiptUrlTrgmSimilarity <value> --searchScore <value> [--amount <value>] [--currency <value>] [--date <value>] [--category <value>] [--description <value>] [--merchant <value>] [--receiptUrl <value>] [--isRecurring <value>] [--tags <value>]
```

### Get a expense by id

```bash
agent-db expense get --id <value>
```
