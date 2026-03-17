# billingSubscription

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for BillingSubscription records via agentic-db CLI

## Usage

```bash
agentic-db billing-subscription list
agentic-db billing-subscription get --id <value>
agentic-db billing-subscription create --entityId <value> --name <value> --nameTrgmSimilarity <value> --currencyTrgmSimilarity <value> --frequencyTrgmSimilarity <value> --providerTrgmSimilarity <value> --statusTrgmSimilarity <value> --notesTrgmSimilarity <value> --searchScore <value> [--amount <value>] [--currency <value>] [--frequency <value>] [--provider <value>] [--nextBillingDate <value>] [--cancellationDate <value>] [--status <value>] [--tags <value>] [--notes <value>]
agentic-db billing-subscription update --id <value> [--entityId <value>] [--name <value>] [--amount <value>] [--currency <value>] [--frequency <value>] [--provider <value>] [--nextBillingDate <value>] [--cancellationDate <value>] [--status <value>] [--tags <value>] [--notes <value>] [--nameTrgmSimilarity <value>] [--currencyTrgmSimilarity <value>] [--frequencyTrgmSimilarity <value>] [--providerTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--notesTrgmSimilarity <value>] [--searchScore <value>]
agentic-db billing-subscription delete --id <value>
```

## Examples

### List all billingSubscription records

```bash
agentic-db billing-subscription list
```

### Create a billingSubscription

```bash
agentic-db billing-subscription create --entityId <value> --name <value> --nameTrgmSimilarity <value> --currencyTrgmSimilarity <value> --frequencyTrgmSimilarity <value> --providerTrgmSimilarity <value> --statusTrgmSimilarity <value> --notesTrgmSimilarity <value> --searchScore <value> [--amount <value>] [--currency <value>] [--frequency <value>] [--provider <value>] [--nextBillingDate <value>] [--cancellationDate <value>] [--status <value>] [--tags <value>] [--notes <value>]
```

### Get a billingSubscription by id

```bash
agentic-db billing-subscription get --id <value>
```
