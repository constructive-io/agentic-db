# providerSyncState

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ProviderSyncState records via agentic-db CLI

## Usage

```bash
agentic-db provider-sync-state list
agentic-db provider-sync-state get --id <UUID>
agentic-db provider-sync-state create --entityId <UUID> --provider <String> --resourceType <String> [--syncCursor <String>] [--lastSyncAt <Datetime>] [--status <String>] [--errorMessage <String>] [--config <JSON>]
agentic-db provider-sync-state update --id <UUID> [--entityId <UUID>] [--provider <String>] [--resourceType <String>] [--syncCursor <String>] [--lastSyncAt <Datetime>] [--status <String>] [--errorMessage <String>] [--config <JSON>]
agentic-db provider-sync-state delete --id <UUID>
```

## Examples

### List all providerSyncState records

```bash
agentic-db provider-sync-state list
```

### Create a providerSyncState

```bash
agentic-db provider-sync-state create --entityId <UUID> --provider <String> --resourceType <String> [--syncCursor <String>] [--lastSyncAt <Datetime>] [--status <String>] [--errorMessage <String>] [--config <JSON>]
```

### Get a providerSyncState by id

```bash
agentic-db provider-sync-state get --id <value>
```
