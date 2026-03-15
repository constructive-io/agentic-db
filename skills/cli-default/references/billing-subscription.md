# billingSubscription

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for BillingSubscription records via agent-db CLI

## Usage

```bash
agent-db billing-subscription list
agent-db billing-subscription get --id <value>
agent-db billing-subscription create --entityId <value> --name <value> --nameTrgmSimilarity <value> --currencyTrgmSimilarity <value> --frequencyTrgmSimilarity <value> --providerTrgmSimilarity <value> --statusTrgmSimilarity <value> --notesTrgmSimilarity <value> --searchScore <value> [--amount <value>] [--currency <value>] [--frequency <value>] [--provider <value>] [--nextBillingDate <value>] [--cancellationDate <value>] [--status <value>] [--tags <value>] [--notes <value>]
agent-db billing-subscription update --id <value> [--entityId <value>] [--name <value>] [--amount <value>] [--currency <value>] [--frequency <value>] [--provider <value>] [--nextBillingDate <value>] [--cancellationDate <value>] [--status <value>] [--tags <value>] [--notes <value>] [--nameTrgmSimilarity <value>] [--currencyTrgmSimilarity <value>] [--frequencyTrgmSimilarity <value>] [--providerTrgmSimilarity <value>] [--statusTrgmSimilarity <value>] [--notesTrgmSimilarity <value>] [--searchScore <value>]
agent-db billing-subscription delete --id <value>
```

## Examples

### List all billingSubscription records

```bash
agent-db billing-subscription list
```

### Create a billingSubscription

```bash
agent-db billing-subscription create --entityId <value> --name <value> --nameTrgmSimilarity <value> --currencyTrgmSimilarity <value> --frequencyTrgmSimilarity <value> --providerTrgmSimilarity <value> --statusTrgmSimilarity <value> --notesTrgmSimilarity <value> --searchScore <value> [--amount <value>] [--currency <value>] [--frequency <value>] [--provider <value>] [--nextBillingDate <value>] [--cancellationDate <value>] [--status <value>] [--tags <value>] [--notes <value>]
```

### Get a billingSubscription by id

```bash
agent-db billing-subscription get --id <value>
```
