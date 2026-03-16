# webhook

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Webhook records via agentic-db CLI

## Usage

```bash
agentic-db webhook list
agentic-db webhook get --id <value>
agentic-db webhook create --entityId <value> --url <value> --eventType <value> --urlTrgmSimilarity <value> --eventTypeTrgmSimilarity <value> --secretTrgmSimilarity <value> --searchScore <value> [--integrationId <value>] [--secret <value>] [--isActive <value>]
agentic-db webhook update --id <value> [--entityId <value>] [--integrationId <value>] [--url <value>] [--eventType <value>] [--secret <value>] [--isActive <value>] [--urlTrgmSimilarity <value>] [--eventTypeTrgmSimilarity <value>] [--secretTrgmSimilarity <value>] [--searchScore <value>]
agentic-db webhook delete --id <value>
```

## Examples

### List all webhook records

```bash
agentic-db webhook list
```

### Create a webhook

```bash
agentic-db webhook create --entityId <value> --url <value> --eventType <value> --urlTrgmSimilarity <value> --eventTypeTrgmSimilarity <value> --secretTrgmSimilarity <value> --searchScore <value> [--integrationId <value>] [--secret <value>] [--isActive <value>]
```

### Get a webhook by id

```bash
agentic-db webhook get --id <value>
```
