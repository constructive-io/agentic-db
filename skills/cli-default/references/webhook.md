# webhook

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Webhook records via agent-os CLI

## Usage

```bash
agent-os webhook list
agent-os webhook get --id <value>
agent-os webhook create --entityId <value> --url <value> --eventType <value> [--integrationId <value>] [--secret <value>] [--isActive <value>]
agent-os webhook update --id <value> [--entityId <value>] [--integrationId <value>] [--url <value>] [--eventType <value>] [--secret <value>] [--isActive <value>]
agent-os webhook delete --id <value>
```

## Examples

### List all webhook records

```bash
agent-os webhook list
```

### Create a webhook

```bash
agent-os webhook create --entityId <value> --url <value> --eventType <value> [--integrationId <value>] [--secret <value>] [--isActive <value>]
```

### Get a webhook by id

```bash
agent-os webhook get --id <value>
```
