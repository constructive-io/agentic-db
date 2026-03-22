# webhook

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Webhook records via agentic-db CLI

## Usage

```bash
agentic-db webhook list
agentic-db webhook get --id <UUID>
agentic-db webhook create --entityId <UUID> --url <String> --eventType <String> [--integrationId <UUID>] [--secret <String>] [--isActive <Boolean>]
agentic-db webhook update --id <UUID> [--entityId <UUID>] [--integrationId <UUID>] [--url <String>] [--eventType <String>] [--secret <String>] [--isActive <Boolean>]
agentic-db webhook delete --id <UUID>
```

## Examples

### List all webhook records

```bash
agentic-db webhook list
```

### Create a webhook

```bash
agentic-db webhook create --entityId <UUID> --url <String> --eventType <String> [--integrationId <UUID>] [--secret <String>] [--isActive <Boolean>]
```

### Get a webhook by id

```bash
agentic-db webhook get --id <value>
```
