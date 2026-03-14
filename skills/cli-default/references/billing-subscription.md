# billingSubscription

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for BillingSubscription records via agent-os CLI

## Usage

```bash
agent-os billing-subscription list
agent-os billing-subscription get --id <value>
agent-os billing-subscription create --entityId <value> --name <value> [--amount <value>] [--currency <value>] [--frequency <value>] [--provider <value>] [--nextBillingDate <value>] [--cancellationDate <value>] [--status <value>] [--tags <value>] [--notes <value>]
agent-os billing-subscription update --id <value> [--entityId <value>] [--name <value>] [--amount <value>] [--currency <value>] [--frequency <value>] [--provider <value>] [--nextBillingDate <value>] [--cancellationDate <value>] [--status <value>] [--tags <value>] [--notes <value>]
agent-os billing-subscription delete --id <value>
```

## Examples

### List all billingSubscription records

```bash
agent-os billing-subscription list
```

### Create a billingSubscription

```bash
agent-os billing-subscription create --entityId <value> --name <value> [--amount <value>] [--currency <value>] [--frequency <value>] [--provider <value>] [--nextBillingDate <value>] [--cancellationDate <value>] [--status <value>] [--tags <value>] [--notes <value>]
```

### Get a billingSubscription by id

```bash
agent-os billing-subscription get --id <value>
```
