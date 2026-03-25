# membershipsModule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for MembershipsModule records via agentic-db CLI

## Usage

```bash
agentic-db memberships-module list
agentic-db memberships-module get --id <UUID>
agentic-db memberships-module create --databaseId <UUID> --membershipType <Int> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--membershipsTableId <UUID>] [--membershipsTableName <String>] [--membersTableId <UUID>] [--membersTableName <String>] [--membershipDefaultsTableId <UUID>] [--membershipDefaultsTableName <String>] [--grantsTableId <UUID>] [--grantsTableName <String>] [--actorTableId <UUID>] [--limitsTableId <UUID>] [--defaultLimitsTableId <UUID>] [--permissionsTableId <UUID>] [--defaultPermissionsTableId <UUID>] [--sprtTableId <UUID>] [--adminGrantsTableId <UUID>] [--adminGrantsTableName <String>] [--ownerGrantsTableId <UUID>] [--ownerGrantsTableName <String>] [--entityTableId <UUID>] [--entityTableOwnerId <UUID>] [--prefix <String>] [--actorMaskCheck <String>] [--actorPermCheck <String>] [--entityIdsByMask <String>] [--entityIdsByPerm <String>] [--entityIdsFunction <String>]
agentic-db memberships-module update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--privateSchemaId <UUID>] [--membershipsTableId <UUID>] [--membershipsTableName <String>] [--membersTableId <UUID>] [--membersTableName <String>] [--membershipDefaultsTableId <UUID>] [--membershipDefaultsTableName <String>] [--grantsTableId <UUID>] [--grantsTableName <String>] [--actorTableId <UUID>] [--limitsTableId <UUID>] [--defaultLimitsTableId <UUID>] [--permissionsTableId <UUID>] [--defaultPermissionsTableId <UUID>] [--sprtTableId <UUID>] [--adminGrantsTableId <UUID>] [--adminGrantsTableName <String>] [--ownerGrantsTableId <UUID>] [--ownerGrantsTableName <String>] [--membershipType <Int>] [--entityTableId <UUID>] [--entityTableOwnerId <UUID>] [--prefix <String>] [--actorMaskCheck <String>] [--actorPermCheck <String>] [--entityIdsByMask <String>] [--entityIdsByPerm <String>] [--entityIdsFunction <String>]
agentic-db memberships-module delete --id <UUID>
```

## Examples

### List all membershipsModule records

```bash
agentic-db memberships-module list
```

### Create a membershipsModule

```bash
agentic-db memberships-module create --databaseId <UUID> --membershipType <Int> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--membershipsTableId <UUID>] [--membershipsTableName <String>] [--membersTableId <UUID>] [--membersTableName <String>] [--membershipDefaultsTableId <UUID>] [--membershipDefaultsTableName <String>] [--grantsTableId <UUID>] [--grantsTableName <String>] [--actorTableId <UUID>] [--limitsTableId <UUID>] [--defaultLimitsTableId <UUID>] [--permissionsTableId <UUID>] [--defaultPermissionsTableId <UUID>] [--sprtTableId <UUID>] [--adminGrantsTableId <UUID>] [--adminGrantsTableName <String>] [--ownerGrantsTableId <UUID>] [--ownerGrantsTableName <String>] [--entityTableId <UUID>] [--entityTableOwnerId <UUID>] [--prefix <String>] [--actorMaskCheck <String>] [--actorPermCheck <String>] [--entityIdsByMask <String>] [--entityIdsByPerm <String>] [--entityIdsFunction <String>]
```

### Get a membershipsModule by id

```bash
agentic-db memberships-module get --id <value>
```
