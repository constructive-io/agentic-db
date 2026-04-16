# providerSyncState

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for ProviderSyncState records via agentic-db CLI

## Usage

```bash
agentic-db provider-sync-state list
agentic-db provider-sync-state list --where.<field>.<op> <value> --orderBy <values>
agentic-db provider-sync-state list --limit 10 --after <cursor>
agentic-db provider-sync-state find-first --where.<field>.<op> <value>
agentic-db provider-sync-state get --id <UUID>
agentic-db provider-sync-state create --provider <String> --resourceType <String> [--syncCursor <String>] [--historyId <String>] [--lastSyncAt <Datetime>] [--status <String>]
agentic-db provider-sync-state update --id <UUID> [--provider <String>] [--resourceType <String>] [--syncCursor <String>] [--historyId <String>] [--lastSyncAt <Datetime>] [--status <String>]
agentic-db provider-sync-state delete --id <UUID>
```

## Examples

### List providerSyncState records

```bash
agentic-db provider-sync-state list
```

### List providerSyncState records with pagination

```bash
agentic-db provider-sync-state list --limit 10 --offset 0
```

### List providerSyncState records with cursor pagination

```bash
agentic-db provider-sync-state list --limit 10 --after <cursor>
```

### Find first matching providerSyncState

```bash
agentic-db provider-sync-state find-first --where.id.equalTo <value>
```

### List providerSyncState records with field selection

```bash
agentic-db provider-sync-state list --select id,id
```

### List providerSyncState records with filtering and ordering

```bash
agentic-db provider-sync-state list --where.id.equalTo <value> --orderBy ID_ASC
```

### Create a providerSyncState

```bash
agentic-db provider-sync-state create --provider <String> --resourceType <String> [--syncCursor <String>] [--historyId <String>] [--lastSyncAt <Datetime>] [--status <String>]
```

### Get a providerSyncState by id

```bash
agentic-db provider-sync-state get --id <value>
```
