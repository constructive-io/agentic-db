# permissionsModule

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for PermissionsModule records via agentic-db CLI

## Usage

```bash
agentic-db permissions-module list
agentic-db permissions-module get --id <UUID>
agentic-db permissions-module create --databaseId <UUID> --membershipType <Int> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--tableId <UUID>] [--tableName <String>] [--defaultTableId <UUID>] [--defaultTableName <String>] [--bitlen <Int>] [--entityTableId <UUID>] [--actorTableId <UUID>] [--prefix <String>] [--getPaddedMask <String>] [--getMask <String>] [--getByMask <String>] [--getMaskByName <String>]
agentic-db permissions-module update --id <UUID> [--databaseId <UUID>] [--schemaId <UUID>] [--privateSchemaId <UUID>] [--tableId <UUID>] [--tableName <String>] [--defaultTableId <UUID>] [--defaultTableName <String>] [--bitlen <Int>] [--membershipType <Int>] [--entityTableId <UUID>] [--actorTableId <UUID>] [--prefix <String>] [--getPaddedMask <String>] [--getMask <String>] [--getByMask <String>] [--getMaskByName <String>]
agentic-db permissions-module delete --id <UUID>
```

## Examples

### List all permissionsModule records

```bash
agentic-db permissions-module list
```

### Create a permissionsModule

```bash
agentic-db permissions-module create --databaseId <UUID> --membershipType <Int> [--schemaId <UUID>] [--privateSchemaId <UUID>] [--tableId <UUID>] [--tableName <String>] [--defaultTableId <UUID>] [--defaultTableName <String>] [--bitlen <Int>] [--entityTableId <UUID>] [--actorTableId <UUID>] [--prefix <String>] [--getPaddedMask <String>] [--getMask <String>] [--getByMask <String>] [--getMaskByName <String>]
```

### Get a permissionsModule by id

```bash
agentic-db permissions-module get --id <value>
```
