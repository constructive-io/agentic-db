# integration

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Integration records via agent-os CLI

## Usage

```bash
agent-os integration list
agent-os integration get --id <value>
agent-os integration create --entityId <value> --name <value> --provider <value> [--type <value>] [--credentialsRef <value>] [--config <value>] [--status <value>] [--lastSyncedAt <value>]
agent-os integration update --id <value> [--entityId <value>] [--name <value>] [--provider <value>] [--type <value>] [--credentialsRef <value>] [--config <value>] [--status <value>] [--lastSyncedAt <value>]
agent-os integration delete --id <value>
```

## Examples

### List all integration records

```bash
agent-os integration list
```

### Create a integration

```bash
agent-os integration create --entityId <value> --name <value> --provider <value> [--type <value>] [--credentialsRef <value>] [--config <value>] [--status <value>] [--lastSyncedAt <value>]
```

### Get a integration by id

```bash
agent-os integration get --id <value>
```
