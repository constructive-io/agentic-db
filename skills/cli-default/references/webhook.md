# webhook

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Webhook records via agent-db CLI

## Usage

```bash
agent-db webhook list
agent-db webhook get --id <value>
agent-db webhook create --entityId <value> --url <value> --eventType <value> --urlTrgmSimilarity <value> --eventTypeTrgmSimilarity <value> --secretTrgmSimilarity <value> --searchScore <value> [--integrationId <value>] [--secret <value>] [--isActive <value>]
agent-db webhook update --id <value> [--entityId <value>] [--integrationId <value>] [--url <value>] [--eventType <value>] [--secret <value>] [--isActive <value>] [--urlTrgmSimilarity <value>] [--eventTypeTrgmSimilarity <value>] [--secretTrgmSimilarity <value>] [--searchScore <value>]
agent-db webhook delete --id <value>
```

## Examples

### List all webhook records

```bash
agent-db webhook list
```

### Create a webhook

```bash
agent-db webhook create --entityId <value> --url <value> --eventType <value> --urlTrgmSimilarity <value> --eventTypeTrgmSimilarity <value> --secretTrgmSimilarity <value> --searchScore <value> [--integrationId <value>] [--secret <value>] [--isActive <value>]
```

### Get a webhook by id

```bash
agent-db webhook get --id <value>
```
