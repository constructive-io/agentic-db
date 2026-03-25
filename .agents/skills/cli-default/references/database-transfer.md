# databaseTransfer

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for DatabaseTransfer records via agentic-db CLI

## Usage

```bash
agentic-db database-transfer list
agentic-db database-transfer get --id <UUID>
agentic-db database-transfer create --databaseId <UUID> --targetOwnerId <UUID> --initiatedBy <UUID> [--sourceApproved <Boolean>] [--targetApproved <Boolean>] [--sourceApprovedAt <Datetime>] [--targetApprovedAt <Datetime>] [--status <String>] [--notes <String>] [--expiresAt <Datetime>] [--completedAt <Datetime>]
agentic-db database-transfer update --id <UUID> [--databaseId <UUID>] [--targetOwnerId <UUID>] [--sourceApproved <Boolean>] [--targetApproved <Boolean>] [--sourceApprovedAt <Datetime>] [--targetApprovedAt <Datetime>] [--status <String>] [--initiatedBy <UUID>] [--notes <String>] [--expiresAt <Datetime>] [--completedAt <Datetime>]
agentic-db database-transfer delete --id <UUID>
```

## Examples

### List all databaseTransfer records

```bash
agentic-db database-transfer list
```

### Create a databaseTransfer

```bash
agentic-db database-transfer create --databaseId <UUID> --targetOwnerId <UUID> --initiatedBy <UUID> [--sourceApproved <Boolean>] [--targetApproved <Boolean>] [--sourceApprovedAt <Datetime>] [--targetApprovedAt <Datetime>] [--status <String>] [--notes <String>] [--expiresAt <Datetime>] [--completedAt <Datetime>]
```

### Get a databaseTransfer by id

```bash
agentic-db database-transfer get --id <value>
```
