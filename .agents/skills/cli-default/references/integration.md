# integration

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Integration records via agentic-db CLI

## Usage

```bash
agentic-db integration list
agentic-db integration get --id <UUID>
agentic-db integration create --entityId <UUID> --name <String> --provider <String> [--type <String>] [--credentialsRef <String>] [--config <JSON>] [--status <String>] [--lastSyncedAt <Datetime>]
agentic-db integration update --id <UUID> [--entityId <UUID>] [--name <String>] [--provider <String>] [--type <String>] [--credentialsRef <String>] [--config <JSON>] [--status <String>] [--lastSyncedAt <Datetime>]
agentic-db integration delete --id <UUID>
```

## Examples

### List all integration records

```bash
agentic-db integration list
```

### Create a integration

```bash
agentic-db integration create --entityId <UUID> --name <String> --provider <String> [--type <String>] [--credentialsRef <String>] [--config <JSON>] [--status <String>] [--lastSyncedAt <Datetime>]
```

### Get a integration by id

```bash
agentic-db integration get --id <value>
```
