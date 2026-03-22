# billingSubscription

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for BillingSubscription records via agentic-db CLI

## Usage

```bash
agentic-db billing-subscription list
agentic-db billing-subscription get --id <UUID>
agentic-db billing-subscription create --entityId <UUID> --name <String> [--amount <BigFloat>] [--currency <String>] [--frequency <String>] [--provider <String>] [--nextBillingDate <Date>] [--cancellationDate <Date>] [--status <String>] [--tags <String>] [--notes <String>]
agentic-db billing-subscription update --id <UUID> [--entityId <UUID>] [--name <String>] [--amount <BigFloat>] [--currency <String>] [--frequency <String>] [--provider <String>] [--nextBillingDate <Date>] [--cancellationDate <Date>] [--status <String>] [--tags <String>] [--notes <String>]
agentic-db billing-subscription delete --id <UUID>
```

## Examples

### List all billingSubscription records

```bash
agentic-db billing-subscription list
```

### Create a billingSubscription

```bash
agentic-db billing-subscription create --entityId <UUID> --name <String> [--amount <BigFloat>] [--currency <String>] [--frequency <String>] [--provider <String>] [--nextBillingDate <Date>] [--cancellationDate <Date>] [--status <String>] [--tags <String>] [--notes <String>]
```

### Get a billingSubscription by id

```bash
agentic-db billing-subscription get --id <value>
```
